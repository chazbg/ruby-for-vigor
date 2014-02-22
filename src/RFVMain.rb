require_relative 'RFVProcessor'
require_relative './../spec/mock_responses'

class MainLoop
  def initialize
    @transport = Object.new
    @transport.define_singleton_method(:send_request) do |uri|
      if uri.path.include? "champion"
        {status: :success, json: JSON.parse(CHAMPIONS)}
      elsif uri.path.include? "game"
        {status: :success, json: JSON.parse(GAMES)}
      elsif uri.path.include? "challenger"
        {status: :success, json: JSON.parse(CHALLENGER)}
      elsif uri.path.include? "entry"
        {status: :success, json: JSON.parse(ENTRY)}
      elsif uri.path.include?"league"
        {status: :success, json: JSON.parse(LEAGUE)}
      elsif uri.path.include? "summary"
        {status: :success, json: JSON.parse(SUMMARY)}
      elsif uri.path.include? "masteries"
        {status: :success, json: JSON.parse(MASTERIES)}
      elsif uri.path.include? "runes"
        {status: :success, json: JSON.parse(RUNES)}
      elsif uri.path.include? "summoner/by-name"
        {status: :success, json: JSON.parse(SUMMONER_BY_NAME)}
      elsif uri.path.include? "ranked?season"
        {status: :success, json: JSON.parse(RANKED_STATS)}
      elsif uri.path.include? "item"
        {status: :success, json: JSON.parse(ITEMS)}
      elsif uri.path.include? "summoner-spell"
        {status: :success, json: JSON.parse(SUMMONER_SPELLS)}
      elsif uri.path.include? "summoner"
        {status: :success, json: JSON.parse(SUMMONER_BY_NAME)}
      end
    end
  end

  def start
    # Transport::HTTPTransport.new
    input_processor = InputProcessor::MenuInputProcessor.new(@transport)
    while (input = gets.chomp.downcase) != 'q' do
      input_processor.process(input)
    end
  end

  main_loop = MainLoop.new
  main_loop.start
end