require_relative 'RFVTransport'
require_relative 'RFVProtocol'
require_relative 'RFVModel'
require_relative 'RFVUI'

module Controller
  class Context
    attr_reader :menu, :process, :args

    def initialize(menu, process, args = nil)
      @menu = menu
      @process = process
      @args = args
    end
  end

  class ContextStack
    def initialize(array = [])
      @stack = array
    end

    def push(context)
      @stack << context
    end

    def top()
      @stack.last
    end

    def pop()
      @stack.pop
    end

    def rollback()
      @stack = [@stack[0]]
    end
  end
  
  class QueryService
    include Model
    include Protocol
    
    attr_reader :champions, :items, :summoner_spells
    
    def initialize(transport)
      @transport = transport
      
      champions_response = @transport.send_request(Champions.create_request("NA"))

      if :success == champions_response[:status]
        @champions = champions_response[:json]["data"].map do |champion_json|
          Champion.new(champion_json[1])
        end
      else
        puts "Server error"
      end
      
      items_response = @transport.send_request(Items.create_request("NA"))
      
      if :success == items_response[:status]
        @items = items_response[:json]["data"].map do |item_json|
          Item.new(item_json)
        end
      else
        puts "Server error"
      end
      
      summoner_spells_response = @transport.send_request(SummonerSpells.create_request("NA"))
      
      if :success == summoner_spells_response[:status]
        @summoner_spells = summoner_spells_response[:json]["data"].map do |summoner_spell_json|
          SummonerSpell.new(summoner_spell_json[1])
        end
      else
        puts "Server error"
      end
    end
    
    def assign_players(players)
      blue_team = []
      purple_team = []
      
      players.each do |player|
        if player.team_id == 100
          blue_team << player
        elsif player.team_id == 200
          purple_team << player
        end
      end
      
      [blue_team, purple_team]
    end
      
    def player_detailed_info(server, player)
      request = SummonersByIds.create_request(server, [player.summoner_id])
      response = @transport.send_request(request)
      detailed_info = {}
      
      champion_name = @champions.select { |champion| player.champion_id == champion.key }[0].name
      if response[:status] == :success
        summoner_info = Summoner.new(response[:json][player.summoner_id.to_s])
        detailed_info = {
          level: summoner_info.level,
          name: summoner_info.name,
          champion: champion_name
        }
      else
        puts "Server error"
      end
      
      detailed_info
    end
    
    def request_summoners(server, names)
      request = SummonerByName.create_request(server, names)
      response = @transport.send_request(request)

      if response[:status] == :success
        summoners = names.map { |name| Summoner.new(response[:json][name], server) }
      else
        []
      end
    end
    
    def request_recent_games(server, summoner_id)
      request = GamesInfo.create_request(server, summoner_id)
      response = @transport.send_request(request)
      
      if response[:status] == :success
        matches = response[:json]["games"].map { |game_json| Game.new(game_json) }
      else
        []
      end
    end
    
    def create_player(summoner_id, team_id, champion_id)
      player = Game::FellowPlayer.new
      player.summoner_id = summoner_id
      player.team_id = team_id
      player.champion_id = champion_id
      player
    end
    
    def request_ranking_stats(server, summoner_id, season)
      request = SummonerRankedInfo.create_request(server, summoner_id, season)
      response = @transport.send_request(request)

      if response[:status] == :success
        stats = RankedStats.new(response[:json])
      else
        nil
      end
    end
    
    def ultimate_bravery_build
      champion = @champions[rand(0...@champions.size)].name
      summoner_spells_pool = @summoner_spells.select { |spell| spell.modes.include?("CLASSIC") }
      summoner_spells_pool.map! { |spell| spell.name }

      summoner_spell1 = summoner_spells_pool[rand(0...summoner_spells_pool.size)]
      summoner_spells_pool.delete summoner_spell1
      summoner_spell2 = summoner_spells_pool[rand(0...summoner_spells_pool.size)]
      
      items_pool = @items.select { |item| item.top_tier }
      items_pool.map! { |item| item.name }
      
      item_build = []
      (0...6).each do |i|
        item = items_pool[rand(0...items_pool.size)]
        items_pool.delete item
        item_build << item
      end
      
      { 
        champion: champion,
        summoner_spell1: summoner_spell1,
        summoner_spell2: summoner_spell2,
        item_build: item_build
      }
    end
    
    def champion_by_id(champion_id)
      @champions.select { |champion| champion.key == champion_id }[0]
    end
    
    def summoner_spell_by_id(summoner_spell_id)
      @summoner_spells.select { |summoner_spell| p summoner_spell.key; summoner_spell.key == summoner_spell_id }[0]
    end
    
    def champion_max_stats
      max_stats = @champions[0].stats.raw.clone

      #TODO: fill min and max arrays in one method
      @champions.each do |champion|
        champion.stats.raw.each do |key, value|
          max_stats[key] = [max_stats[key], value].max
        end
      end
      
      max_stats
    end
    
    def champion_min_stats
      min_stats = @champions[0].stats.raw.clone

      @champions.each do |champion|
        champion.stats.raw.each do |key, value|
          min_stats[key] = [min_stats[key], value].min
        end
      end
      
      min_stats
    end
    
    def normalize(current_value, min_value, max_value)
      if min_value == max_value 
        1
      else
        (current_value.to_f - min_value) / (max_value - min_value)
      end
    end
    
    def closest_champion(query_champion, champion_pool)
      max_values = champion_max_stats
      min_values = champion_min_stats
 
      closest_champion = { distance: 10000, champion: nil }
      
      champion_pool.each do |champion|
        distance = 0
        
        champion.stats.raw.each do |key, observed_value|
          if max_values[key] != 0.0 
            expected_value = normalize(query_champion.stats.raw[key], min_values[key], max_values[key])
            observed_value = normalize(observed_value, min_values[key], max_values[key])
            if expected_value == 0 then expected_value = 0.1 end
            distance += ((observed_value - expected_value).abs ** 2) / expected_value
          end
        end
        
        if distance < closest_champion[:distance]
          closest_champion[:distance] = distance
          closest_champion[:champion] = champion 
        end
      end

      closest_champion[:champion]
    end
    
    def similar_champions(query_champions)
      champions_pool = @champions - query_champions 
      query_champions.map do |query_champion| 
        {
          original: query_champion,
          similar: closest_champion(query_champion, champions_pool)
        } 
      end
    end
  end
  
  class DataController
    include UserInterface
    attr_reader :process
    
    def initialize(transport)
      @service = QueryService.new(transport)
      @context_stack = ContextStack.new

      @context_stack.push(Context.new(MainMenu.new, :process_main_menu_input))
      @process = @context_stack.top.process
      @context_stack.top.menu.display_menu
    end
    
    def context_transition(transition, input = nil)
      send(transition, input)
    end

    private
    
    def region_menu_transition(input)
      @process = :process_region_menu_input
      @context_stack.push(Context.new(RegionMenu.new, @process))
      @context_stack.top.menu.display_menu
    end
    
    def summoner_name_menu_transition(input)
      @process = :process_summoner_name_menu_input
      @context_stack.push(Context.new(SummonerNameMenu.new, @process, input))
      @context_stack.top.menu.display_menu
    end
    
    def summoner_menu_transition(input)
      input = input.split(',')[0]
      server = @context_stack.top.args
      summoners = @service.request_summoners(server, [input])

      if 0 != summoners.size
        menu = SummonerMenu.new
        @process = :process_summoner_menu_input
        @context_stack.push(Context.new(menu, @process, summoners[0]))
        @context_stack.top.menu.display_summoner_info(summoners[0])
      else
        # TODO: Call UI.displayerror
        puts "Summoner name #{input} not existing"
      end

      @context_stack.top.menu.display_menu
    end
    
    def matches_menu_transition(input)
      summoner = @context_stack.top.args

      matches = @service.request_recent_games(summoner.server, summoner.id)

      if 0 != matches.size
        @process = :process_matches_menu_input
        menu = MatchesMenu.new
        menu.display_matches_info(matches, @service.champions)
        args = { matches: matches, current_summoner: summoner }
        @context_stack.push(Context.new(menu, @process, args))
      else
        # TODO: Call UI.displayerror
        puts "Server error"
      end
      
      @context_stack.top.menu.display_menu
    end
    
    def match_details_transition(input)
      matches = @context_stack.top.args[:matches]
      summoner = @context_stack.top.args[:current_summoner]
      
      if input == '0'
        index = 0
      elsif (input.to_i > 0) && (input.to_i < matches.size)
        index = input.to_i
      else
        index = -1
      end
      
      if index != -1
        current_summoner = @service.create_player(
          summoner.id,
          matches[index].team_id,
          matches[index].champion_id
        )

        players = [current_summoner]
        players += matches[index].fellow_players

        blue_team, purple_team = @service.assign_players(players)
        
        blue_team.map! { |player| @service.player_detailed_info(summoner.server, player) }
        purple_team.map! { |player| @service.player_detailed_info(summoner.server, player) }
        
        @process = :process_match_details_menu_input
        menu = MatchDetails.new
        menu.dislpay_match_details(matches[index], @service.items, blue_team, purple_team)
        @context_stack.push(Context.new(menu, @process))
      else
        puts "Invalid game index"
      end
      
      @context_stack.top.menu.display_menu
    end

    def ranking_menu_transition(input)
      summoner = @context_stack.top.args
      
      ranked_stats = @service.request_ranking_stats(summoner.server, summoner.id, "season4")
      
      if nil != ranked_stats
        @process = :process_ranking_menu_input
        menu = RankingMenu.new
        menu.display_ranking_stats(ranked_stats)
        @context_stack.push(Context.new(menu, @process))
      else
        # TODO: Call UI.displayerror
        puts "Server error"
      end

      @context_stack.top.menu.display_menu
    end
    
    def champion_suggestion_menu_transition(input)
      summoner = @context_stack.top.args

      query_champions = @service.request_ranking_stats(summoner.server, summoner.id, "season4")
        .champions.map { |champion| @service.champion_by_id champion.id }
        .select { |champion| champion != nil }
      
      if 0 == query_champions.size
        matches = @service.request_recent_games(summoner.server, summoner.id)
        
        query_champions = matches.map { |match| match.champion_id }.uniq
        query_champions.map! { |champion_id| @service.champion_by_id champion_id }   
      end

      suggestions = @service.similar_champions(query_champions)

      menu = ChampionSuggestionMenu.new
      menu.display_suggestions suggestions
      @process = :process_champion_suggestion_menu_input
      @context_stack.push(Context.new(menu, @process))
      @context_stack.top.menu.display_menu
    end
    
    def general_advice_menu_transition(input)
      summoner = @context_stack.top.args
      matches = @service.request_recent_games(summoner.server, summoner.id)
      
      checklist = {
        jungle_cs: :not_available,
        average_cs: :not_ok,
        average_wards: :not_ok,
        average_deaths: :not_ok
      }
      
      #jungler games
      jungler_games = matches.select do |match| 
        spell1 = @service.summoner_spell_by_id match.spell1
        spell2 = @service.summoner_spell_by_id match.spell2
        
        spell1.name == "Smite" or spell2.name == "Smite"        
      end
      
      jungler_games_cs = 0
      jungler_games_minutes = 0
      jungler_games.each do |game|
        jungler_games_cs += game.stats.minions_killed + game.stats.neutral_minions_killed
        jungler_games_minutes += game.stats.time_played / 60
      end
      
      if jungler_games.size > 0
        if jungler_games_cs < jungler_games_minutes * 5 
          checklist[:jungle_cs] = :not_ok
        else
          checklist[:jungle_cs] = :ok
        end
      end
      
      #rest games
      games_rest = matches - jungler_games
      games_rest_cs = 0
      games_rest_minutes = 0
      games_rest.each do |game|
        games_rest_cs += game.stats.minions_killed + game.stats.neutral_minions_killed
        games_rest_minutes += game.stats.time_played / 60
      end
      
      if games_rest_cs >= games_rest_minutes * 8 
        checklist[:average_cs] = :ok
      end
        
      #wards
      wards_placed = 0
      minutes_played = 0
      deaths = 0
      
      matches.each do |game|
        wards_placed += game.stats.ward_placed
        minutes_played += game.stats.time_played / 60
        deaths += game.stats.num_deaths
      end
      
      if wards_placed >= minutes_played / 3
        checklist[:average_wards] = :ok
      end
      
      #deaths
      if deaths / matches.size <= 5
        checklist[:average_deaths] = :ok
      end
      
      menu = GeneralAdviceMenu.new
      menu.display_general_advice(checklist)
      @process = :process_general_advice_menu_input
      @context_stack.push(Context.new(menu, @process))
      @context_stack.top.menu.display_menu
    end
    
    def ultimate_bravery_menu_transition(input)
      @process = :process_ultimate_bravery_menu_input
      menu = UltimateBraveryMenu.new
      menu.display_build(@service.ultimate_bravery_build)
      @context_stack.push(Context.new(menu, @process))
      @context_stack.top.menu.display_menu
    end
    
    def back_transition(input)
      @context_stack.pop
      @process = @context_stack.top.process
      @context_stack.top.menu.display_menu
    end
    
    def rollback_transition(input)
      @context_stack.rollback
      @process = @context_stack.top.process
      @context_stack.top.menu.display_menu
    end
    
    def invalid_transition(input)
      puts "Invalid option"
      @context_stack.top.menu.display_menu
    end
  end
end