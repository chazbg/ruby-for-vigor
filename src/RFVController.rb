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
    
    attr_reader :champions, :items
    
    def initialize(transport)
      @transport = transport
      
      champions_response = @transport.send_request(Champions.create_request("NA"))

      if :success == champions_response[:status]
        @champions = champions_response[:json]["champions"].map do |champion_json|
          Champion.new(champion_json)
        end
      end
      
      items_response = @transport.send_request(Items.create_request("NA"))
      
      if :success == items_response[:status]
        @items = items_response[:json]["data"].map do |item_json|
          Item.new(item_json)
        end
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
      
      champion_name = @champions.select { |champion| player.champion_id == champion.id }[0].name
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
      @process = :process_champion_suggestion_menu_input
      @context_stack.push(Context.new(ChampionSuggestionMenu.new, @process))
      @context_stack.top.menu.display_menu
    end
    
    def general_advice_menu_transition(input)
      @process = :process_general_advice_menu_input
      @context_stack.push(Context.new(GeneralAdviceMenu.new, @process))
      @context_stack.top.menu.display_menu
    end
    
    def ultimate_bravery_menu_transition(input)
      @process = :process_ultimate_bravery_menu_input
      @context_stack.push(Context.new(UltimateBraveryMenu.new, @process))
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