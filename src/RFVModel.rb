module Model
  class Summoner
    attr_reader :server, :id, :name, :summoner_level
    
    def initialize(summoner_json = {}, server = "")
      summoner_json ||= {}

      @server = server.upcase
      @id = summoner_json["id"] || 0
      @name = summoner_json["name"] || ""
      @summoner_level = summoner_json["summonerLevel"] || 0
    end
  end
  
  class Game
    attr_reader :champion_id, :create_date, :fellow_players, :game_mode, :game_type, :map_id, :spell1, :spell2, :stats, :sub_type, :team_id
  
    class FellowPlayer
      attr_reader :champion_id, :team_id, :summoner_id
      
      def initialize(fellow_player_json = {})
        fellow_player_json ||= {}
        @champion_id = fellow_player_json["championId"] || 0
        @team_id = fellow_player_json["teamId"] || 0
        @summoner_id = fellow_player_json["summonerId"] || 0
      end
    end
    
    class Stats
      attr_reader :assists, :barracks_killed, :champions_killed, :combat_player_score, :consumables_purchased, :damage_dealt_player, :double_kills, :first_blood, :gold, :gold_earned, :gold_spent, :item0, :item1, :item2, :item3, :item4, :item5, :item6, :items_purchased, :killing_sprees, :largest_critical_strike, :largest_killing_spree, :largest_multi_kill, :legendary_items_created, :level, :magic_damage_dealt_player, :magic_damage_dealt_to_champions, :magic_damage_taken, :minions_denied, :minions_killed, :neutral_minions_killed, :neutral_minions_killed_enemy_jungle, :neutral_minions_killed_your_jungle, :nexus_killed, :node_capture, :node_capture_assist, :node_neutralize, :node_neutralize_assist, :num_deaths, :num_items_bought, :objective_player_score, :penta_kills, :physical_damage_dealt_player, :physical_damage_dealt_to_champions, :physical_damage_taken, :quadra_kills, :sight_wards_bought, :spell1_cast, :spell2_cast, :spell3_cast, :spell4_cast, :summoner_spell1_cast, :summoner_spell2_cast, :super_monsters_killed, :team, :team_objective, :time_played, :total_damage_dealt, :total_damage_dealt_to_champions, :total_heal, :total_player_score, :total_score_rank, :total_time_crowd_control_dealt, :total_units_healed, :triple_kills, :true_damage_dealt_player, :true_damage_dealt_to_champions, :true_damage_taken, :turrets_killed, :unreal_kills, :victory_point_total, :vision_wards_bought, :ward_killed, :ward_placed, :win
      
      def initialize(stats_json = {})
        stats_json ||= {}
        @assists = stats_json["assists"] || 0
        @barracks_killed = stats_json["barracksKilled"] || 0
        @champions_killed = stats_json["championsKilled"] || 0
        @combat_player_score = stats_json["combatPlayerScore"] || 0
        @consumables_purchased = stats_json["consumablesPurchased"] || 0
        @damage_dealt_player = stats_json["damageDealtPlayer"] || 0
        @double_kills = stats_json["doubleKills"] || 0
        @first_blood = stats_json["firstBlood"] || 0
        @gold = stats_json["gold"] || 0
        @gold_earned = stats_json["goldEarned"] || 0
        @gold_spent = stats_json["goldSpent"] || 0
        @item0 = stats_json["item0"] || 0
        @item1 = stats_json["item1"] || 0
        @item2 = stats_json["item2"] || 0
        @item3 = stats_json["item3"] || 0
        @item4 = stats_json["item4"] || 0
        @item5 = stats_json["item5"] || 0
        @item6 = stats_json["item6"] || 0
        @items_purchased = stats_json["itemsPurchased"] || 0
        @killing_sprees = stats_json["killingSprees"] || 0
        @largest_critical_strike = stats_json["largestCriticalStrike"] || 0
        @largest_killing_spree = stats_json["largestKillingSpree"] || 0
        @largest_multi_kill = stats_json["largestMultiKill"] || 0
        @legendary_items_created = stats_json["legendaryItemsCreated"] || 0
        @level = stats_json["level"] || 0
        @magic_damage_dealt_player = stats_json["magicDamageDealtPlayer"] || 0
        @magic_damage_dealt_to_champions = stats_json["magicDamageDealtToChampions"] || 0
        @magic_damage_taken = stats_json["magicDamageTaken"] || 0
        @minions_denied = stats_json["minionsDenied"] || 0
        @minions_killed = stats_json["minionsKilled"] || 0
        @neutral_minions_killed = stats_json["neutralMinionsKilled"] || 0
        @neutral_minions_killed_enemy_jungle = stats_json["neutralMinionsKilledEnemyJungle"] || 0
        @neutral_minions_killed_your_jungle = stats_json["neutralMinionsKilledYourJungle"] || 0
        @nexus_killed = stats_json["nexusKilled"] # The user of this class should check for nil because we risk showing incorrect data.
        @node_capture = stats_json["nodeCapture"] || 0
        @node_capture_assist = stats_json["nodeCaptureAssist"] || 0
        @node_neutralize = stats_json["nodeNeutralize"] || 0
        @node_neutralize_assist = stats_json["nodeNeutralizeAssist"] || 0
        @num_deaths = stats_json["numDeaths"] || 0
        @num_items_bought = stats_json["numItemsBought"] || 0
        @objective_player_score = stats_json["objectivePlayerScore"] || 0
        @penta_kills = stats_json["pentaKills"] || 0
        @physical_damage_dealt_player = stats_json["physicalDamageDealtPlayer"] || 0
        @physical_damage_dealt_to_champions = stats_json["physicalDamageDealtToChampions"] || 0
        @physical_damage_taken = stats_json["physicalDamageTaken"] || 0
        @quadra_kills = stats_json["quadraKills"] || 0
        @sight_wards_bought = stats_json["sightWardsBought"] || 0
        @spell1_cast = stats_json["spell1Cast"] || 0
        @spell2_cast = stats_json["spell2Cast"] || 0
        @spell3_cast = stats_json["spell3Cast"] || 0
        @spell4_cast = stats_json["spell4Cast"] || 0
        @summoner_spell1_cast = stats_json["summonSpell1Cast"] || 0
        @summoner_spell2_cast = stats_json["summonSpell2Cast"] || 0
        @super_monsters_killed = stats_json["superMonsterKilled"] || 0
        @team = stats_json["team"] || 0
        @team_objective = stats_json["teamObjective"] || 0
        @time_played = stats_json["timePlayed"] || 0
        @total_damage_dealt = stats_json["totalDamageDealt"] || 0
        @total_damage_dealt_to_champions = stats_json["totalDamageDealtToChampions"] || 0
        @total_damage_taken = stats_json["totalDamageTaken"] || 0
        @total_heal = stats_json["totalHeal"] || 0
        @total_player_score = stats_json["totalPlayerScore"] || 0
        @total_score_rank = stats_json["totalScoreRank"] || 0
        @total_time_crowd_control_dealt = stats_json["totalTimeCrowdControlDealt"] || 0
        @total_units_healed = stats_json["totalUnitsHealed"] || 0
        @triple_kills = stats_json["tripleKills"] || 0
        @true_damage_dealt_player = stats_json["trueDamageDealtPlayer"] || 0
        @true_damage_dealt_to_champions = stats_json["trueDamageDealtToChampions"] || 0
        @true_damage_taken = stats_json["trueDamageTaken"] || 0
        @turrets_killed = stats_json["turretsKilled"] || 0
        @unreal_kills = stats_json["unrealKills"] || 0
        @victory_point_total = stats_json["victoryPointTotal"] || 0
        @vision_wards_bought = stats_json["visionWardsBought"] || 0
        @ward_killed = stats_json["wardKilled"] || 0
        @ward_placed = stats_json["wardPlaced"] || 0
        @win = stats_json["win"] # The user of this class should check for nil because we risk showing incorrect data.
      end
    end
    
    def initialize(game_json = {})
      game_json ||= {}
      @champion_id = game_json["championId"] || 0
      @create_date = Date.new(game_json["createDate"] || 0)
      @fellow_players = []
      (game_json["fellowPlayers"] || []).each { |player| @fellow_players << FellowPlayer.new(player) }
      @game_mode = game_json["gameMode"] || ""
      @game_type = game_json["gameType"] || ""
      @map_id = game_json["mapId"] || 0
      @spell1 = game_json["spell1"] || 0
      @spell2 = game_json["spell2"] || 0
      @stats = Stats.new(game_json["stats"])
      @sub_type = game_json["subType"] || ""
      @team_id = game_json["teamId"] || 0
    end
  end
  
  class Champion
    attr_reader :id, :name, :defense_rank, :attack_rank, :magic_rank, :difficulty_rank
    
    def initialize(champion_json = {})
      champion_json ||= {}
      @id = champion_json["id"] || 0
      @name = champion_json["name"]  || ""
      @defense_rank = champion_json["defenseRank"] || 0
      @attack_rank = champion_json["attackRank"] || 0
      @magic_rank = champion_json["magicRank"] || 0
      @difficulty_rank = champion_json["difficultyRank"] || 0
    end
  end
end