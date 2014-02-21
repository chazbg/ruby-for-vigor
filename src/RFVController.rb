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

    def top
      @stack.last
    end

    def pop
      @stack.pop
    end

    def rollback
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
      @champions = ChampionArray.new(champions_response[:json]) if :success == champions_response[:status]

      items_response = @transport.send_request(Items.create_request("NA"))
      @items = ItemArray.new(items_response[:json]) if :success == items_response[:status]

      summoner_spells_response = @transport.send_request(SummonerSpells.create_request("NA"))
      @summoner_spells = SummonerSpellArray.new(summoner_spells_response[:json]) if :success == summoner_spells_response[:status]
    end

    def player_detailed_info(server, player)
      request = SummonersByIds.create_request(server, [player.summoner_id])
      response = @transport.send_request(request)
      detailed_info = {}
      champion_name = @champions.find_by_id(player.champion_id).name

      if response[:status] == :success
        summoner_info = Summoner.new(response[:json][player.summoner_id.to_s])
        detailed_info = {
          level: summoner_info.level,
          name: summoner_info.name,
          champion: champion_name
        }
      end

      detailed_info
    end

    def summoners(server, names)
      request = SummonerByName.create_request(server, names)
      response = @transport.send_request(request)

      if response[:status] == :success
        names.map { |name| Summoner.new(response[:json][name], server) }
      else
        []
      end
    end

    def recent_games(server, summoner_id)
      request = GamesInfo.create_request(server, summoner_id)
      response = @transport.send_request(request)

      if response[:status] == :success
        GameArray.new(response[:json])
      else
        GameArray.new
      end
    end

    def create_player(summoner_id, team_id, champion_id)
      Game::FellowPlayer.create(summoner_id, team_id, champion_id)
    end

    def ranking_stats(server, summoner_id, season)
      request = SummonerRankedInfo.create_request(server, summoner_id, season)
      response = @transport.send_request(request)

      if response[:status] == :success
        RankedStats.new(response[:json])
      else
        nil
      end
    end

    def ultimate_bravery_build
      champion = choose_champion
      summoner_spell1, summoner_spell2 = choose_summoner_spells
      item_build = choose_item_build
      {
        champion: champion,
        summoner_spell1: summoner_spell1,
        summoner_spell2: summoner_spell2,
        item_build: item_build
      }
    end

    def closest_champion(query_champion, champion_pool)
      min_stats =  @champions.min_stats
      max_stats = @champions.max_stats

      closest_champion = {distance: 10000, champion: nil}

      champion_pool.each do |champion|
        distance = query_champion.distance(champion, min_stats, max_stats)

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

    private
    def choose_champion
      @champions[rand(0...@champions.size)].name
    end

    def choose_summoner_spells
      summoner_spells_pool = @summoner_spells.select { |spell| spell.modes.include?("CLASSIC") }
      summoner_spells_pool.map! { |spell| spell.name }

      summoner_spell1 = summoner_spells_pool[rand(0...summoner_spells_pool.size)]
      summoner_spells_pool.delete(summoner_spell1)
      summoner_spell2 = summoner_spells_pool[rand(0...summoner_spells_pool.size)]
      [summoner_spell1, summoner_spell2]
    end

    def choose_item_build
      items_pool = @items.select { |item| item.top_tier }
      items_pool.map! { |item| item.name }
      item_build = []

      (0...6).each do |i|
        item = items_pool[rand(0...items_pool.size)]
        items_pool.delete(item)
        item_build << item
      end

      item_build
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
    SEASON = 'SEASON4'.freeze
    WARDS_PER_MINUTE = 0.33.freeze
    DEATHS_PER_GAME = 5.freeze
    JUNGLE_CS_PER_MINUTE = 5.freeze
    AVERAGE_CS_PER_MINUTE = 8.freeze
    SECONDS_PER_MINUTE = 60.freeze

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
      summoners = @service.summoners(server, [input])

      unless 0 == summoners.size
        menu = SummonerMenu.new
        @process = :process_summoner_menu_input
        @context_stack.push(Context.new(menu, @process, summoners[0]))
        @context_stack.top.menu.display_summoner_info(summoners[0])
      else
        @context_stack.top.menu("Summoner name #{ input } not existing")
      end

      @context_stack.top.menu.display_menu
    end

    def matches_menu_transition(input)
      summoner = @context_stack.top.args

      matches = @service.recent_games(summoner.server, summoner.id)

      if 0 < matches.size
        @process = :process_matches_menu_input
        menu = MatchesMenu.new
        menu.display_matches_info(matches, @service.champions)
        args = {matches: matches, current_summoner: summoner}
        @context_stack.push(Context.new(menu, @process, args))
      else
        @context_stack.top.menu.display_error("Server error")
      end

      @context_stack.top.menu.display_menu
    end

    def obtain_teams(players, summoner_info)
      blue_team, purple_team = Utils::assign_players(players)

      blue_team.map! { |player| @service.player_detailed_info(summoner_info.server, player) }
      purple_team.map! { |player| @service.player_detailed_info(summoner_info.server, player) }

      [blue_team, purple_team]
    end

    def match_details_transition(input)
      matches = @context_stack.top.args[:matches]
      summoner_info = @context_stack.top.args[:current_summoner]
      index = input.to_i

      if (0...matches.size).include?(index)
        players = matches[index].fellow_players
        blue_team, purple_team = obtain_teams(players, summoner_info)

        @process = :process_match_details_menu_input
        menu = MatchDetails.new
        menu.dislpay_match_details(matches[index],
                                   @service.items,
                                   blue_team,
                                   purple_team)
        @context_stack.push(Context.new(menu, @process))
      else
        @context_stack.top.menu.display_error("Invalid game index")
      end

      @context_stack.top.menu.display_menu
    end

    def ranking_menu_transition(input)
      summoner = @context_stack.top.args

      ranked_stats = @service.ranking_stats(summoner.server, summoner.id, SEASON)

      if ranked_stats
        @process = :process_ranking_menu_input
        menu = RankingMenu.new
        menu.display_ranking_stats(ranked_stats)
        @context_stack.push(Context.new(menu, @process))
      else
        @context_stack.top.menu.display_error("Server error")
      end

      @context_stack.top.menu.display_menu
    end

    def preferred_champions(summoner)
      champions = @service.ranking_stats(summoner.server, summoner.id, SEASON).champions
      champions.map! { |champion| @service.champions.find_by_id(champion.id) }
      champions.select! { |champion| champion != nil }

      if 0 == champions.size
        matches = @service.recent_games(summoner.server, summoner.id)

        champions = matches.map { |match| match.champion_id }.uniq
        champions.map! { |champion_id| @service.champions.find_by_id(champion.id) }
      end

      champions
    end

    def champion_suggestion_menu_transition(input)
      summoner = @context_stack.top.args
      query_champions = preferred_champions(summoner)
      suggestions = @service.similar_champions(query_champions)
      menu = ChampionSuggestionMenu.new

      menu.display_suggestions suggestions
      @process = :process_champion_suggestion_menu_input
      @context_stack.push(Context.new(menu, @process))
      @context_stack.top.menu.display_menu
    end

    def get_jungler_games(games)
      smite_id = @service.summoner_spells.find_by_name("Smite").key
      games.select { |game| game.spell1 == smite_id or game.spell2 == smite_id }
    end

    def check_jungler_games(games)
      jungler_games = get_jungler_games(games)

      jungler_games_cs = 0
      jungler_games_minutes = 0
      jungler_games.each do |game|
        jungler_games_cs += game.stats.minions_killed + game.stats.neutral_minions_killed
        jungler_games_minutes += game.stats.time_played / SECONDS_PER_MINUTE
      end

      return :not_available if jungler_games.size == 0
      return :ok if jungler_games_minutes * JUNGLE_CS_PER_MINUTE
      return :not_ok
    end

    def check_carry_games(games)
      jungler_games = get_jungler_games(games)
      games_rest = games - jungler_games
      games_rest_cs = 0
      games_rest_minutes = 0

      games_rest.each do |game|
        games_rest_cs += game.stats.minions_killed + game.stats.neutral_minions_killed
        games_rest_minutes += game.stats.time_played / SECONDS_PER_MINUTE
      end

      return :ok if games_rest_cs >= games_rest_minutes * AVERAGE_CS_PER_MINUTE
      return :not_ok
    end

    def check_wards(games)
      wards_placed = 0
      minutes_played = 0

      games.each do |game|
        wards_placed += game.stats.ward_placed
        minutes_played += game.stats.time_played / SECONDS_PER_MINUTE
      end

      return :ok if wards_placed >= minutes_played * WARDS_PER_MINUTE
      return :not_ok
    end

    def check_deaths(games)
      deaths = 0
      minutes_played = 0

      games.each do |game|
        minutes_played += game.stats.time_played / SECONDS_PER_MINUTE
        deaths += game.stats.num_deaths
      end

      return :ok if deaths / games.size <= DEATHS_PER_GAME
      return :not_ok
    end

    def general_advice_menu_transition(input)
      summoner = @context_stack.top.args
      games = @service.recent_games(summoner.server, summoner.id)

      checklist = {
        jungle_cs: check_jungler_games(games),
        average_cs: check_carry_games(games),
        average_wards: check_wards(games),
        average_deaths: check_deaths(games)
      }

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
      @context_stack.top.menu.display_error("Invalid option")
      @context_stack.top.menu.display_menu
    end
  end
end