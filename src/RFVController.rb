require './RFVTransport.rb'
require './RFVProtocol.rb'
require './RFVModel.rb'

module Controller
  class Context
    attr_reader :menu, :data, :options
    
    def initialize(menu, data, options)
      @menu = menu
      @data = data
      @options = options
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
  end
  
  class DataController
    def initialize()
      # Download static data - champions, runes, masteries, items
      champions_response = Transport::send_request(Protocol::Champions.create_request("NA"))
      # puts champions_response
      if :success == champions_response[:status]
        @champions = champions_response[:json]["champions"].map do |champion_json| 
          Model::Champion.new(champion_json) 
        end
        @champions.each { |champ| p champ.name }
      end
      # Draw main menu
    end
  end
  
  data_controller = DataController.new
end