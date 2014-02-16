module UserInterface
  class BasicMenu
    def initialize()
      @data = ""
    end
    
    def display_menu()
      puts @data
      puts 'B. Back'
      puts 'H. Home'
      puts 'Q. Quit'
    end
  end
  
  class MainMenu < BasicMenu
    def display_menu()
      puts '1. Get summoner statistics'
      puts '2. Ultimate Bravery'
      puts 'Q. Quit'
    end
  end

  class RegionMenu < BasicMenu
    def display_menu()
      puts 'Select region (NA/EUW/EUNE/KR/BR)'
      puts 'B. Back'
      puts 'Q. Quit'
    end
  end
  
  class SummonerNameMenu < BasicMenu
    def display_menu()
      puts 'Enter summoner name'
      puts 'B. Back'
      puts 'H. Home'
      puts 'Q. Quit'
    end
  end
  
  class SummonerMenu < BasicMenu
    def display_menu()
      puts '1. Matches details'
      puts '2. Ranking details'
      puts '3. Champion suggestion'
      puts '4. General advices'
      puts 'B. Back'
      puts 'H. Home'
      puts 'Q. Quit'
    end
    
    def display_summoner_info(summoner_model)
      @data = [
        "----------------------------------------",
        "Server: #{summoner_model.server}",
        "Summoner name: #{summoner_model.name}",
        "Summoner level: #{summoner_model.level}",
        "----------------------------------------"
      ]
    end
  end
  
  class MatchesMenu < BasicMenu
    def display_matches_info(match_models, champion_models)
      @data = []
      (1...match_models.size).each do |match_index|
        match = match_models[match_index]
        
        champion = champion_models.select { |champion| match.champion_id == champion.id }[0].name
        
        @data << [
          "----------------------------------------",
          "Game #{match_index}",
          "Champion: #{champion}",
          "Date: #{match.create_date}",
          "Game Mode: #{match.game_mode}",
          "Game Type: #{match.game_type}",
          "Game Subtype: #{match.sub_type}",
          "----------------------------------------"
        ]
      end
      
      @data << "Enter game number to see match details"
    end
  end
  
  class MatchDetails < BasicMenu
    def dislpay_match_details(match, items, blue_team, purple_team)
      stats = match.stats
      
      item_build = item_build_string(items, stats)
      players = players_string(blue_team, purple_team)
      
      
      @data = [
        players,
        "----------------------------------------",
        "Date: #{match.create_date}",
        "Game Mode: #{match.game_mode}",
        "Game Type: #{match.game_type}",
        "Game Subtype: #{match.sub_type}",
        "----------------------------------------",
        "Match Stats:",
        "Kills: #{stats.champions_killed}",
        "Deaths: #{stats.champions_killed}",
        "Assists: #{stats.assists}",
        "Minions killed: #{stats.minions_killed}",
        "Jungle monsters killed in your jungle: #{stats.neutral_minions_killed_your_jungle}",
        "Jungle monsters killed in enemy jungle: #{stats.neutral_minions_killed_enemy_jungle}",
        "Wards killed: #{stats.ward_killed}",
        "Wards placed: #{stats.ward_placed}",
        "Gold earned: #{stats.gold_earned}",
        "Gold spent: #{stats.gold_spent}",
        "Item Build: #{item_build}",
        "Total damage dealt: #{stats.total_damage_dealt}",
        "Total damage taken: #{stats.total_damage_taken}",
        "Total time of crowd control dealt: #{Time.at(stats.total_time_crowd_control_dealt).gmtime.strftime('%R:%S')}",
        "Game duration: #{Time.at(stats.time_played).gmtime.strftime('%R:%S')}",
        "Result: #{stats.win == true ? "Win" : "Lose" }",
        "----------------------------------------"
      ]
    end
    
    private
    
    def item_build_string(items, stats)
      item_ids = [
        stats.item0,
        stats.item1,
        stats.item2,
        stats.item3,
        stats.item4,
        stats.item5,
        stats.item6        
      ].select { |item| item != 0 }
      
      item_build = items.select { |item| item_ids.include?(item.id) }
      item_build = item_build.map { |item| item.name }.join(", ")
    end
    
    def players_string(blue_team, purple_team)
      players = [
        "-" * 121,
        "%-60s %60s" % ["Blue", "Purple"],
        "-" * 121
      ]
      
      (0...blue_team.size).each do |index|
        blue_player = blue_team[index]
        purple_player = purple_team[index]
        
        players << "%-20s %-20s %-18s %18s %20s %20s" % [
          "#{blue_player[:name]}", 
          "Summoner Level #{blue_player[:level]}", 
          "#{blue_player[:champion]}", 
          "#{purple_player[:champion]}",
          "Summoner Level #{purple_player[:level]}", 
          "#{purple_player[:name]}"
        ]
      end
      
      players << "-" * 121
    end
  end
  
  class RankingMenu < BasicMenu
    def display_ranking_stats(stats)
      @data = stats
    end
  end
  
  class ChampionSuggestionMenu < BasicMenu
  end
  
  class GeneralAdviceMenu < BasicMenu
  end
  
  class UltimateBraveryMenu < BasicMenu
  end
end