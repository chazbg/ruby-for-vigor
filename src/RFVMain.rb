require_relative 'RFVProcessor'

class MainLoop
  def start
    
    input_processor = MenuInputProcessor.new(Transport.new)
    while (input = gets.chomp.downcase) != 'q' do
      input_processor.process(input)
    end
  end
end

main_loop = MainLoop.new
main_loop.start