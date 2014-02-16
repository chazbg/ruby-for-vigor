module UserInterface
  class BasicMenu
    def display_menu()
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
      info = [
        "----------------------------------------",
        "Server: #{summoner_model.server}",
        "Summoner name: #{summoner_model.name}",
        "Summoner level: #{summoner_model.summoner_level}",
        "----------------------------------------"
      ].join("\n")
      
      puts info
    end
  end
  
  class MatchesMenu < BasicMenu
    def display_matches_info(match_models)
      p match_models.count
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