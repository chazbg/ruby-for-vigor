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
end