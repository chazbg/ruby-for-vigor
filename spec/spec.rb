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

describe "Something" do
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
      ].each do |c| 
        # puts "\n" + c.to_s 
        # p @http.get(c.create_request.path) 
      end
    end
  end
end

module Model
  describe "Model" do
    it "Extracts Summoner values from JSON correctly" do
      summoner = Summoner.new(JSON.parse(SUMMONER_BY_NAME)["chazbg"])
      summoner.id.should be_kind_of Integer
      summoner.name.should be_kind_of String
      summoner.summoner_level.should be_kind_of Integer
      
      # Correct handling of nil values (common for JSON)
      summoner = Summoner.new(nil)
      summoner.id.should be_kind_of Integer
      summoner.name.should be_kind_of String
      summoner.summoner_level.should be_kind_of Integer
    end
    
    it "Extracts Game::FellowPlayer values from JSON correctly" do
      player = Game::FellowPlayer.new(JSON.parse(FELLOW_PLAYERS)[0])
      player.champion_id.should be_kind_of Integer
      player.team_id.should be_kind_of Integer
      player.summoner_id.should be_kind_of Integer
      
      # Correct handling of nil values (common for JSON)
      player = Game::FellowPlayer.new(nil)
      player.champion_id.should be_kind_of Integer
      player.team_id.should be_kind_of Integer
      player.summoner_id.should be_kind_of Integer
    end
    
    it "Extracts Game::Stats values from JSON correctly" do
      game_stats = Game::Stats.new(JSON.parse(GAME_STATS))
      game_stats.assists.should be_kind_of Integer
      game_stats.barracks_killed.should be_kind_of Integer
      game_stats.champions_killed.should be_kind_of Integer
      game_stats.combat_player_score.should be_kind_of Integer
      game_stats.consumables_purchased.should be_kind_of Integer
      game_stats.damage_dealt_player.should be_kind_of Integer
      game_stats.double_kills.should be_kind_of Integer
      game_stats.first_blood.should be_kind_of Integer
      game_stats.gold.should be_kind_of Integer
      game_stats.gold_earned.should be_kind_of Integer
      game_stats.gold_spent.should be_kind_of Integer
      game_stats.item0.should be_kind_of Integer
      game_stats.item1.should be_kind_of Integer
      game_stats.item2.should be_kind_of Integer
      game_stats.item3.should be_kind_of Integer
      game_stats.item4.should be_kind_of Integer
      game_stats.item5.should be_kind_of Integer
      game_stats.item6.should be_kind_of Integer
      game_stats.items_purchased.should be_kind_of Integer
      game_stats.killing_sprees.should be_kind_of Integer
      game_stats.largest_critical_strike.should be_kind_of Integer
      game_stats.largest_killing_spree.should be_kind_of Integer
      game_stats.largest_multi_kill.should be_kind_of Integer
      game_stats.legendary_items_created.should be_kind_of Integer
      game_stats.level.should be_kind_of Integer
      game_stats.magic_damage_dealt_player.should be_kind_of Integer
      game_stats.magic_damage_dealt_to_champions.should be_kind_of Integer
      game_stats.magic_damage_taken.should be_kind_of Integer
      game_stats.minions_denied.should be_kind_of Integer
      game_stats.minions_killed.should be_kind_of Integer
      game_stats.neutral_minions_killed.should be_kind_of Integer
      game_stats.neutral_minions_killed_enemy_jungle.should be_kind_of Integer
      game_stats.neutral_minions_killed_your_jungle.should be_kind_of Integer
      game_stats.node_capture.should be_kind_of Integer
      game_stats.node_capture_assist.should be_kind_of Integer
      game_stats.node_neutralize.should be_kind_of Integer
      game_stats.node_neutralize_assist.should be_kind_of Integer
      game_stats.num_deaths.should be_kind_of Integer
      game_stats.num_items_bought.should be_kind_of Integer
      game_stats.objective_player_score.should be_kind_of Integer
      game_stats.penta_kills.should be_kind_of Integer
      game_stats.physical_damage_dealt_player.should be_kind_of Integer
      game_stats.physical_damage_dealt_to_champions.should be_kind_of Integer
      game_stats.physical_damage_taken.should be_kind_of Integer
      game_stats.quadra_kills.should be_kind_of Integer
      game_stats.sight_wards_bought.should be_kind_of Integer
      game_stats.spell1_cast.should be_kind_of Integer
      game_stats.spell2_cast.should be_kind_of Integer
      game_stats.spell3_cast.should be_kind_of Integer
      game_stats.spell4_cast.should be_kind_of Integer
      game_stats.summoner_spell1_cast.should be_kind_of Integer
      game_stats.summoner_spell2_cast.should be_kind_of Integer
      game_stats.super_monsters_killed.should be_kind_of Integer
      game_stats.team.should be_kind_of Integer
      game_stats.team_objective.should be_kind_of Integer
      game_stats.time_played.should be_kind_of Integer
      game_stats.total_damage_dealt.should be_kind_of Integer
      game_stats.total_damage_dealt_to_champions.should be_kind_of Integer
      game_stats.total_heal.should be_kind_of Integer
      game_stats.total_player_score.should be_kind_of Integer
      game_stats.total_score_rank.should be_kind_of Integer
      game_stats.total_time_crowd_control_dealt.should be_kind_of Integer
      game_stats.total_units_healed.should be_kind_of Integer
      game_stats.triple_kills.should be_kind_of Integer
      game_stats.true_damage_dealt_player.should be_kind_of Integer
      game_stats.true_damage_dealt_to_champions.should be_kind_of Integer
      game_stats.true_damage_taken.should be_kind_of Integer
      game_stats.turrets_killed.should be_kind_of Integer
      game_stats.unreal_kills.should be_kind_of Integer
      game_stats.victory_point_total.should be_kind_of Integer
      game_stats.vision_wards_bought.should be_kind_of Integer
      game_stats.ward_killed.should be_kind_of Integer
      game_stats.ward_placed.should be_kind_of Integer
      
      # Correct handling of nil values (common for JSON)
      game_stats = Game::Stats.new(nil)
      game_stats.assists.should be_kind_of Integer
      game_stats.barracks_killed.should be_kind_of Integer
      game_stats.champions_killed.should be_kind_of Integer
      game_stats.combat_player_score.should be_kind_of Integer
      game_stats.consumables_purchased.should be_kind_of Integer
      game_stats.damage_dealt_player.should be_kind_of Integer
      game_stats.double_kills.should be_kind_of Integer
      game_stats.first_blood.should be_kind_of Integer
      game_stats.gold.should be_kind_of Integer
      game_stats.gold_earned.should be_kind_of Integer
      game_stats.gold_spent.should be_kind_of Integer
      game_stats.item0.should be_kind_of Integer
      game_stats.item1.should be_kind_of Integer
      game_stats.item2.should be_kind_of Integer
      game_stats.item3.should be_kind_of Integer
      game_stats.item4.should be_kind_of Integer
      game_stats.item5.should be_kind_of Integer
      game_stats.item6.should be_kind_of Integer
      game_stats.items_purchased.should be_kind_of Integer
      game_stats.killing_sprees.should be_kind_of Integer
      game_stats.largest_critical_strike.should be_kind_of Integer
      game_stats.largest_killing_spree.should be_kind_of Integer
      game_stats.largest_multi_kill.should be_kind_of Integer
      game_stats.legendary_items_created.should be_kind_of Integer
      game_stats.level.should be_kind_of Integer
      game_stats.magic_damage_dealt_player.should be_kind_of Integer
      game_stats.magic_damage_dealt_to_champions.should be_kind_of Integer
      game_stats.magic_damage_taken.should be_kind_of Integer
      game_stats.minions_denied.should be_kind_of Integer
      game_stats.minions_killed.should be_kind_of Integer
      game_stats.neutral_minions_killed.should be_kind_of Integer
      game_stats.neutral_minions_killed_enemy_jungle.should be_kind_of Integer
      game_stats.neutral_minions_killed_your_jungle.should be_kind_of Integer
      game_stats.node_capture.should be_kind_of Integer
      game_stats.node_capture_assist.should be_kind_of Integer
      game_stats.node_neutralize.should be_kind_of Integer
      game_stats.node_neutralize_assist.should be_kind_of Integer
      game_stats.num_deaths.should be_kind_of Integer
      game_stats.num_items_bought.should be_kind_of Integer
      game_stats.objective_player_score.should be_kind_of Integer
      game_stats.penta_kills.should be_kind_of Integer
      game_stats.physical_damage_dealt_player.should be_kind_of Integer
      game_stats.physical_damage_dealt_to_champions.should be_kind_of Integer
      game_stats.physical_damage_taken.should be_kind_of Integer
      game_stats.quadra_kills.should be_kind_of Integer
      game_stats.sight_wards_bought.should be_kind_of Integer
      game_stats.spell1_cast.should be_kind_of Integer
      game_stats.spell2_cast.should be_kind_of Integer
      game_stats.spell3_cast.should be_kind_of Integer
      game_stats.spell4_cast.should be_kind_of Integer
      game_stats.summoner_spell1_cast.should be_kind_of Integer
      game_stats.summoner_spell2_cast.should be_kind_of Integer
      game_stats.super_monsters_killed.should be_kind_of Integer
      game_stats.team.should be_kind_of Integer
      game_stats.team_objective.should be_kind_of Integer
      game_stats.time_played.should be_kind_of Integer
      game_stats.total_damage_dealt.should be_kind_of Integer
      game_stats.total_damage_dealt_to_champions.should be_kind_of Integer
      game_stats.total_heal.should be_kind_of Integer
      game_stats.total_player_score.should be_kind_of Integer
      game_stats.total_score_rank.should be_kind_of Integer
      game_stats.total_time_crowd_control_dealt.should be_kind_of Integer
      game_stats.total_units_healed.should be_kind_of Integer
      game_stats.triple_kills.should be_kind_of Integer
      game_stats.true_damage_dealt_player.should be_kind_of Integer
      game_stats.true_damage_dealt_to_champions.should be_kind_of Integer
      game_stats.true_damage_taken.should be_kind_of Integer
      game_stats.turrets_killed.should be_kind_of Integer
      game_stats.unreal_kills.should be_kind_of Integer
      game_stats.victory_point_total.should be_kind_of Integer
      game_stats.vision_wards_bought.should be_kind_of Integer
      game_stats.ward_killed.should be_kind_of Integer
      game_stats.ward_placed.should be_kind_of Integer    
    end
    
    it "Extracts Game values from JSON correctly" do
      game = Game.new(JSON.parse(GAMES)["games"][0])
      game.champion_id.should be_kind_of Integer
      game.create_date.should be_kind_of Date
      game.fellow_players.should be_kind_of Array
      game.fellow_players[0].should be_kind_of Game::FellowPlayer
      game.game_mode.should be_kind_of String
      game.game_type.should be_kind_of String
      game.map_id.should be_kind_of Integer
      game.spell1.should be_kind_of Integer
      game.spell2.should be_kind_of Integer
      game.stats.should be_kind_of Game::Stats
      game.sub_type.should be_kind_of String
      game.team_id.should be_kind_of Integer
      
      # Correct handling of nil values (common for JSON)
      game = Game.new(nil)
      game.champion_id.should be_kind_of Integer
      game.create_date.should be_kind_of Date
      game.fellow_players.should be_kind_of Array
      game.game_mode.should be_kind_of String
      game.game_type.should be_kind_of String
      game.map_id.should be_kind_of Integer
      game.spell1.should be_kind_of Integer
      game.spell2.should be_kind_of Integer
      game.stats.should be_kind_of Game::Stats
      game.sub_type.should be_kind_of String
      game.team_id.should be_kind_of Integer
    end
    
    it "Extracts Champion values from JSON correctly" do
      champion = Champion.new(JSON.parse(CHAMPIONS)["champions"][0])
      champion.id.should be_kind_of Integer
      champion.name.should be_kind_of String
      champion.defense_rank.should be_kind_of Integer
      champion.attack_rank.should be_kind_of Integer
      champion.magic_rank.should be_kind_of Integer
      champion.difficulty_rank.should be_kind_of Integer
      
      # Correct handling of nil values (common for JSON)
      champion = Champion.new(nil)
      champion.id.should be_kind_of Integer
      champion.name.should be_kind_of String
      champion.defense_rank.should be_kind_of Integer
      champion.attack_rank.should be_kind_of Integer
      champion.magic_rank.should be_kind_of Integer
      champion.difficulty_rank.should be_kind_of Integer
    end
  end
end

module Controller
  describe "Controller" do
    describe "Context" do
        it "Initializes contexts correctly" do
        menu = UserInterface::BasicMenu.new
        data = "Test Data"
        options = { 
          b: { method: :back, args: [] }, 
          h: { method: :home, args: [] }, 
          q: { method: :quit, args: [] } 
        }
        
        context = Context.new(menu, data, options)

        context.options[:b].should eq({ method: :back, args: [] })
        context.menu.should eq menu
        context.data.should eq "Test Data"
      end
    end
    
    describe "ContextStack" do
      it "Pushes contexts correctly" do
        stack = ContextStack.new
        context1 = UserInterface::MainMenu.new
        context2 = UserInterface::RegionMenu.new
        context3 = UserInterface::SummonerNameMenu.new
        stack.push(context1)
        stack.push(context2)
        stack.push(context3)
        stack.top.should eq context3
      end

      it "Pops contexts correctly" do
        stack = ContextStack.new
        context1 = UserInterface::MainMenu.new
        context2 = UserInterface::RegionMenu.new
        context3 = UserInterface::SummonerNameMenu.new
        stack.push(context1)
        stack.push(context2)
        stack.push(context3)
        stack.pop
        stack.top.should eq context2
      end
    end
  end
end