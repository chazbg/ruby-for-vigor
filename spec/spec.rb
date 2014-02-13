require 'net/http'
require 'json'
require './mock_responses.rb'

module Protocol  
  describe "Protocol" do
    it "Creates correct URI for each request type" do
      [
        Champions,
        SummonerByName,
        SummonerMasteries,
        SummonerRunes,
        SummonerSummary,
        GamesInfo,
        LeagueInfoEntry,
        LeagueInfo,
        LeagueInfoChallenger        
      ].each { |request| request.create_request.class.should eq URI::HTTP }
    end
  end
end

describe Net::HTTP do
  context "Mock Riot Server" do
    before(:each) do
      @http = double(Net::HTTP)
      @http.stub(:get) do |arg|
        if arg.include? "champion"
          JSON.parse CHAMPIONS
        elsif arg.include? "game"
          JSON.parse GAMES
        elsif arg.include? "challenger"
          JSON.parse CHALLENGER
        elsif arg.include? "entry"
          JSON.parse ENTRY
        elsif arg.include?"league"
          JSON.parse LEAGUE
        elsif arg.include? "summary"
          JSON.parse SUMMARY
        elsif arg.include? "masteries"
          JSON.parse MASTERIES
        elsif arg.include? "runes"
          JSON.parse RUNES
        elsif arg.include? "summoner/by-name"
          JSON.parse SUMMONER_BY_NAME
        end
      end
    end
    
    it "Returns valid data for all requests" do
      [
        Protocol::Champions,
        Protocol::GamesInfo,
        Protocol::LeagueInfoChallenger,
        Protocol::LeagueInfoEntry,
        Protocol::LeagueInfo,
        Protocol::SummonerSummary,
        Protocol::SummonerMasteries,
        Protocol::SummonerRunes,
        Protocol::SummonerByName
      ].each { |c| puts "\n" + c.to_s; p @http.get(c.create_request.path) }
    end
  end
end