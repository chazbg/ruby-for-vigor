require_relative 'RFVProcessor'

class MainLoop
  def start
    input_processor = InputProcessor::MenuInputProcessor.new(Transport::HTTPTransport.new)
    while (input = gets.chomp.downcase) != 'q' do
      input_processor.process(input)
    end
  end

  main_loop = MainLoop.new
  main_loop.start
end