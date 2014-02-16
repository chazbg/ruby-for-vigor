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
      ].join("\n")
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
        ].join("\n")
      end
      
      @data << "Enter game number to see match details"
      @data.join("\n")
    end
  end
  
  class MatchDetails < BasicMenu
    def dislpay_match_details(match_model)
      stats = match_model.stats
      @data = [
        "----------------------------------------",
        "Date: #{match_model.create_date}",
        "Game Mode: #{match_model.game_mode}",
        "Game Type: #{match_model.game_type}",
        "Game Subtype: #{match_model.sub_type}",
        "----------------------------------------",
        "Match Stats:",
        "Kills: #{stats.champions_killed}",
        "Deaths: #{stats.champions_killed}",
        "Assists: #{stats.assists}",
        "Minions killed: #{stats.minions_killed}",
        "Jungle monsters killed in your jungle: #{stats.neutral_minions_killed_your_jungle}",
        "Jungle monsters killed in enemy jungle: #{stats.neutral_minions_killed_enemy_jungle}",
        "----------------------------------------"
      ].join("\n")
    end
  end
  
  class RankingMenu < BasicMenu
  end
  
  class ChampionSuggestionMenu < BasicMenu
  end
  
  class GeneralAdviceMenu < BasicMenu
  end
  
  class UltimateBraveryMenu < BasicMenu
  end
end