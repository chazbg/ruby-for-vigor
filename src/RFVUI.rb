module UserInterface
  class Context
    def display_menu
      puts 'B. Back'
      puts 'H. Home'
      puts 'Q. Quit'
    end
  end
  
  class MainMenu < Context
    def display_menu
      puts '1. Get summoner statistics'
      puts '2. Ultimate Bravery'
      puts 'Q. Quit'
    end
  end

  class RegionMenu < Context
    def display_menu
      puts '1. Enter region'
      puts 'B. Back'
      puts 'Q. Quit'
    end
  end
  
  class SummonerNameMenu < Context
    def display_menu
      puts '1. Enter summoner name'
      puts 'B. Back'
      puts 'H. Home'
      puts 'Q. Quit'
    end
  end
  
  class SummonerMenu < Context
    def display_menu
      puts '1. Matches details'
      puts '2. Ranking details'
      puts '3. Champion suggestion'
      puts '4. General advices'
      puts 'B. Back'
      puts 'H. Home'
      puts 'Q. Quit'
    end
  end
  
  class MatchesMenu < Context
  end
  
  class RankingMenu < Context
  end
  
  class ChampionSuggestionMenu < Context
  end
  
  class GeneralAdviceMenu < Context
  end
end