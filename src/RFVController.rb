require_relative 'RFVTransport.rb'
require_relative 'RFVProtocol.rb'
require_relative 'RFVModel.rb'
require_relative 'RFVUI.rb'

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
    def initialize()
      # Download static data - champions, runes, masteries, items
      champions_response = Transport::send_request(Protocol::Champions.create_request("NA"))

      if :success == champions_response[:status]
        @champions = champions_response[:json]["champions"].map do |champion_json| 
          Model::Champion.new(champion_json) 
        end
      end
      
      # @champions.each { |champion| p champion}
      
      @context_stack = ContextStack.new
      
      @context_stack.push(Context.new(UserInterface::MainMenu.new, :process_main_menu_input))
      
      main_loop
    end
    
    private
    
    def main_loop()
      @context_stack.top.menu.display_menu
      while (input = gets.chomp.downcase) != 'q' do
        send(@context_stack.top.process, input)
        @context_stack.top.menu.display_menu
      end
    end
    
    def process_main_menu_input(input)
      case input
      when '1'
        process = :process_region_menu_input
        @context_stack.push(Context.new(UserInterface::RegionMenu.new, process))
      when '2'
        process = :process_ultimate_bravery_menu_input
        @context_stack.push(Context.new(UserInterface::UltimateBraveryMenu.new, process))
      else
        # TODO: Call UI.displayerror
        puts "Incorrect option"
      end
    end
    
    def process_region_menu_input(input)
      case input
      when 'na', 'euw', 'eune', 'kr', 'br'
        process = :process_summoner_name_menu_input
        @context_stack.push(Context.new(UserInterface::SummonerNameMenu.new, process, input))
      when 'b'
        @context_stack.pop
      else
        # TODO: Call UI.displayerror
        puts "Incorrect option"
      end
    end
    
    def process_summoner_name_menu_input(input)
      case input
      when 'h'
        @context_stack.rollback
      when 'b'
        @context_stack.pop
      else
        request = Protocol::SummonerByName.create_request(@context_stack.top.args, [input])
        response = Transport::send_request(request)
        
        if response[:status] == :success
          process = :process_summoner_menu_input
          
          summoner_model = Model::Summoner.new(response[:json][input])
          @context_stack.push(Context.new(UserInterface::SummonerMenu.new, process, summoner_model))
          @context_stack.top.menu.display_summoner_info(summoner_model)
        else
          # TODO: Call UI.displayerror
          puts "Summoner name #{input} not existing"
        end
      end
    end
    
    def process_summoner_menu_input(input)
      case input
      when 'h'
        @context_stack.rollback
      when 'b'
        @context_stack.pop
      else
        # TODO: Call UI.displayerror
        puts "Incorrect option"
      end
    end
    
    def process_ultimate_bravery_menu_input(input)
    end
  end
  
  # data_controller = DataController.new
end