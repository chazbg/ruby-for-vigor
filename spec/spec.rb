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
        LeagueInfoChallenger,
        SummonerRankedInfo,
        SummonersByIds,
        Items,
        SummonerSpells
      ].each { |request| request.create_request.class.should eq URI::HTTP }
    end
  end
end

module Model
  describe "Model" do
    it "Extracts Summoner values from JSON correctly" do
      summoner = Summoner.new(JSON.parse(SUMMONER_BY_NAME)["chazbg"])
      summoner.id.should be_kind_of Integer
      summoner.name.should be_kind_of String
      summoner.level.should be_kind_of Integer

      # Correct handling of nil values (common for JSON)
      summoner = Summoner.new(nil)
      summoner.id.should be_kind_of Integer
      summoner.name.should be_kind_of String
      summoner.level.should be_kind_of Integer
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
      game.create_date.should be_kind_of Time
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
      game.create_date.should be_kind_of Time
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
      JSON.parse(CHAMPIONS)["data"].map do |champion_json|
        champion = Champion.new(champion_json[1])
        champion.key.should be_kind_of Integer
        champion.name.should be_kind_of String
        champion.title.should be_kind_of String
        champion.stats.should be_kind_of Champion::Stats
      end
      
      # Correct handling of nil values (common for JSON)
      champion = Champion.new(nil)
      champion.key.should be_kind_of Integer
      champion.name.should be_kind_of String
      champion.title.should be_kind_of String
      champion.stats.should be_kind_of Champion::Stats
    end

    it "Extracts Champion::Stats values from JSON correctly" do
      JSON.parse(CHAMPIONS)["data"].map do |champion_json|
        champion = Champion.new(champion_json[1])
        champion.stats.raw.should be_kind_of Hash
        champion.stats.attack_range.should be_kind_of Float
        champion.stats.mp_per_level.should be_kind_of Float
        champion.stats.mp.should be_kind_of Float
        champion.stats.attack_damage.should be_kind_of Float
        champion.stats.hp.should be_kind_of Float
        champion.stats.hp_per_level.should be_kind_of Float
        champion.stats.attack_damage_per_level.should be_kind_of Float
        champion.stats.armor.should be_kind_of Float
        champion.stats.mp_regen_per_level.should be_kind_of Float
        champion.stats.hp_regen.should be_kind_of Float
        champion.stats.crit_per_level.should be_kind_of Float
        champion.stats.spellblock_per_level.should be_kind_of Float
        champion.stats.mp_regen.should be_kind_of Float
        champion.stats.attack_speed_per_level.should be_kind_of Float
        champion.stats.spellblock.should be_kind_of Float
        champion.stats.move_speed.should be_kind_of Float
        champion.stats.attack_speed_offset.should be_kind_of Float
        champion.stats.crit.should be_kind_of Float
        champion.stats.hp_regen_per_level.should be_kind_of Float
        champion.stats.armor_per_level.should be_kind_of Float
      end
      
      # Correct handling of nil values (common for JSON)
      champion = Champion.new(nil)
      champion.stats.raw.should be_kind_of Hash
      champion.stats.attack_range.should be_kind_of Float
      champion.stats.mp_per_level.should be_kind_of Float
      champion.stats.mp.should be_kind_of Float
      champion.stats.attack_damage.should be_kind_of Float
      champion.stats.hp.should be_kind_of Float
      champion.stats.hp_per_level.should be_kind_of Float
      champion.stats.attack_damage_per_level.should be_kind_of Float
      champion.stats.armor.should be_kind_of Float
      champion.stats.mp_regen_per_level.should be_kind_of Float
      champion.stats.hp_regen.should be_kind_of Float
      champion.stats.crit_per_level.should be_kind_of Float
      champion.stats.spellblock_per_level.should be_kind_of Float
      champion.stats.mp_regen.should be_kind_of Float
      champion.stats.attack_speed_per_level.should be_kind_of Float
      champion.stats.spellblock.should be_kind_of Float
      champion.stats.move_speed.should be_kind_of Float
      champion.stats.attack_speed_offset.should be_kind_of Float
      champion.stats.crit.should be_kind_of Float
      champion.stats.hp_regen_per_level.should be_kind_of Float
      champion.stats.armor_per_level.should be_kind_of Float
    end
    
    it "Extracts Item values from JSON correctly" do
      JSON.parse(ITEMS)["data"].each do |item_json|
        item = Item.new(item_json)
        item.name.should be_kind_of String
        item.id.should be_kind_of Integer
        item.top_tier.should_not eq nil
      end
    end
    
    it "Extracts RankedStats values from JSON correctly" do
      ranked_stats = RankedStats.new(JSON.parse(RANKED_STATS))
      ranked_stats.champions.should be_kind_of Array
      
      ranked_stats = RankedStats.new(nil)
      ranked_stats.champions.should be_kind_of Array
    end
    
    it "Extracts RankedStats::RankedChampion values from JSON correctly" do
      ranked_stats = RankedStats.new(JSON.parse(RANKED_STATS))
      ranked_stats.champions.each do |champion|
        champion.name.should be_kind_of String
        champion.kills.should be_kind_of Integer
        champion.assists.should be_kind_of Integer
        champion.deaths.should be_kind_of Integer
        champion.first_bloods.should be_kind_of Integer
        champion.max_champions_killed.should be_kind_of Integer
        champion.minions_killed.should be_kind_of Integer
        champion.total_games.should be_kind_of Integer
        champion.average_kills.should be_kind_of Float
        champion.average_deaths.should be_kind_of Float
        champion.average_assists.should be_kind_of Float
        champion.average_minions.should be_kind_of Float
        champion.first_blood_probability.should be_kind_of Float
      end
      
      ranked_stats = RankedStats.new(nil)
      ranked_stats.champions.each do |champion|
        champion.name.should be_kind_of String
        champion.kills.should be_kind_of Integer
        champion.assists.should be_kind_of Integer
        champion.deaths.should be_kind_of Integer
        champion.first_bloods.should be_kind_of Integer
        champion.max_champions_killed.should be_kind_of Integer
        champion.minions_killed.should be_kind_of Integer
        champion.total_games.should be_kind_of Integer
        champion.average_kills.should be_kind_of Float
        champion.average_deaths.should be_kind_of Float
        champion.average_assists.should be_kind_of Float
        champion.average_minions.should be_kind_of Float
        champion.first_blood_probability.should be_kind_of Float
      end
    end
    
    it "Extracts SummonerSpell values from JSON correctly" do
      JSON.parse(SUMMONER_SPELLS)["data"].each do |summoner_spell_json|
        summoner_spell = SummonerSpell.new(summoner_spell_json[1])
        summoner_spell.name.should be_kind_of String
        summoner_spell.modes.should be_kind_of Array
      end
      
      summoner_spell = SummonerSpell.new(nil)
      summoner_spell.name.should be_kind_of String
      summoner_spell.modes.should be_kind_of Array
    end
  end
end

module Controller
  describe "Controller" do
    before(:each) do
      @transport = double(Transport)
      @transport.stub(:send_request) do |uri|
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
      
      @query_service = QueryService.new @transport
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

    describe "QueryService" do
      it "Assigns players to teams correctly" do
        summoner1 = Model::Game::FellowPlayer.new({
          "teamId" => 100,
          "summonerId" => 1,
          "championId" => 11
        })

        summoner2 = Model::Game::FellowPlayer.new({
          "teamId" => 200,
          "summonerId" => 2,
          "championId" => 12
        })

        summoner3 = Model::Game::FellowPlayer.new({
          "teamId" => 100,
          "summonerId" => 3,
          "championId" => 13
        })

        summoner4 = Model::Game::FellowPlayer.new({
          "teamId" => 200,
          "summonerId" => 1,
          "championId" => 14
        })

        blue_team, purple_team = @query_service.assign_players([
          summoner1,
          summoner2,
          summoner3,
          summoner4
        ])

        blue_team.include?(summoner1).should eq true
        blue_team.include?(summoner3).should eq true
        purple_team.include?(summoner2).should eq true
        purple_team.include?(summoner4).should eq true
      end
      
      it "Extracts stats vector from champions array correctly" do
        max_stats = @query_service.champion_max_stats
        @query_service.champions.each do |champion|
          max_stats.each do |key, value|
            champion.stats.raw[key].should be <= value
          end
        end
      end
      
      it "Normalizes values correctly" do
        epsilon = 0.000001
        (@query_service.normalize(1, 0, 10) - 0.1).should be <= epsilon
        (@query_service.normalize(5, 0, 10) - 0.5).should be <= epsilon
        (@query_service.normalize(5, 0, 60) - 0.08333333).should be <= epsilon
      end
    end
  end
    
  describe "DataController" do
      
  end
end