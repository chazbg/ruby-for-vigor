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
  
  class DataController
    attr_reader :process
    def initialize()
      # Download static data - champions, runes, masteries, items
      champions_response = Transport::send_request(Protocol::Champions.create_request("NA"))

      if :success == champions_response[:status]
        @champions = champions_response[:json]["champions"].map do |champion_json|
          Model::Champion.new(champion_json)
        end
      end

      items_response = Transport::send_request(Protocol::Items.create_request("NA"))
      
      if :success == items_response[:status]
        @items = items_response[:json]["data"].map do |item_json|
          Model::Item.new(item_json)
        end
      end
      # @champions.each { |champion| p champion}

      @context_stack = ContextStack.new

      @context_stack.push(Context.new(UserInterface::MainMenu.new, :process_main_menu_input))
      @process = @context_stack.top.process
      @context_stack.top.menu.display_menu
    end
    
    def context_transition(transition, input = nil)
      send(transition, input)
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
      request = Protocol::SummonersByIds.create_request(server, [player.summoner_id])
      response = Transport::send_request(request)
      detailed_info = {}
      
      champion_name = @champions.select { |champion| player.champion_id == champion.id }[0].name
      if response[:status] == :success
        summoner_info = Model::Summoner.new(response[:json][player.summoner_id.to_s])
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
    
    private
    
    def region_menu_transition(input)
      @process = :process_region_menu_input
      @context_stack.push(Context.new(UserInterface::RegionMenu.new, @process))
      @context_stack.top.menu.display_menu
    end
    
    def summoner_name_menu_transition(input)
      @process = :process_summoner_name_menu_input
      @context_stack.push(Context.new(UserInterface::SummonerNameMenu.new, @process, input))
      @context_stack.top.menu.display_menu
    end
    
    def summoner_menu_transition(input)
      input = input.split(',')[0]
      server = @context_stack.top.args
      request = Protocol::SummonerByName.create_request(server, [input])
      response = Transport::send_request(request)

      if response[:status] == :success
        menu = UserInterface::SummonerMenu.new
        @process = :process_summoner_menu_input
        summoner_model = Model::Summoner.new(response[:json][input], server)
        @context_stack.push(Context.new(menu, @process, summoner_model))
        @context_stack.top.menu.display_summoner_info(summoner_model)
      else
        # TODO: Call UI.displayerror
        puts "Summoner name #{input} not existing"
      end

      @context_stack.top.menu.display_menu
    end
    
    def matches_menu_transition(input)
      summoner_model = @context_stack.top.args

      request = Protocol::GamesInfo.create_request(summoner_model.server, summoner_model.id)
      response = Transport::send_request(request)

      if response[:status] == :success
        match_models = response[:json]["games"].map { |game_json| Model::Game.new(game_json) }
        
        @process = :process_matches_menu_input
        menu = UserInterface::MatchesMenu.new
        menu.display_matches_info(match_models, @champions)
        args = { matches: match_models, current_summoner: summoner_model }
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
        current_summoner = Model::Game::FellowPlayer.new
        current_summoner.summoner_id = summoner.id
        current_summoner.team_id = matches[index].team_id
        current_summoner.champion_id = matches[index].champion_id
        
        players = matches[index].fellow_players
        players << current_summoner
        
        blue_team, purple_team = assign_players(players)
        
        blue_team.map! { |player| player_detailed_info(summoner.server, player) }
        purple_team.map! { |player| player_detailed_info(summoner.server, player) }
        
        @process = :process_match_details_menu_input
        menu = UserInterface::MatchDetails.new
        menu.dislpay_match_details(matches[index], @items, blue_team, purple_team)
        @context_stack.push(Context.new(menu, @process))
      else
        puts "Invalid game index"
      end
      
      @context_stack.top.menu.display_menu
    end

    def ranking_menu_transition(input)
      @process = :process_ranking_menu_input
      @context_stack.push(Context.new(UserInterface::RankingMenu.new, @process))
      @context_stack.top.menu.display_menu
    end
    
    def champion_suggestion_menu_transition(input)
      @process = :process_champion_suggestion_menu_input
      @context_stack.push(Context.new(UserInterface::ChampionSuggestionMenu.new, @process))
      @context_stack.top.menu.display_menu
    end
    
    def general_advice_menu_transition(input)
      @process = :process_general_advice_menu_input
      @context_stack.push(Context.new(UserInterface::GeneralAdviceMenu.new, @process))
      @context_stack.top.menu.display_menu
    end
    
    def ultimate_bravery_menu_transition(input)
      @process = :process_ultimate_bravery_menu_input
      @context_stack.push(Context.new(UserInterface::UltimateBraveryMenu.new, @process))
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