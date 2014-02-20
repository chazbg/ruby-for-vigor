module UserInterface
  class BasicMenu
    def initialize
      @data = ""
    end

    def display_menu
      puts [
        @data,
        "B. Back",
        "H. Home",
        "Q. Quit"
      ]
    end
  end

  class MainMenu < BasicMenu
    def display_menu
      puts [
        "1. Get summoner statistics",
        "2. Ultimate Bravery",
        "Q. Quit"
      ]
    end
  end

  class RegionMenu < BasicMenu
    def display_menu
      puts [
        "Select region (NA/EUW/EUNE/KR/BR)",
        "B. Back",
        "Q. Quit"
      ]
    end
  end

  class SummonerNameMenu < BasicMenu
    def display_menu
      puts [
        "Enter summoner name",
        "B. Back",
        "H. Home",
        "Q. Quit"
      ]
    end
  end

  class SummonerMenu < BasicMenu
    def display_summoner_info(summoner_model)
      @data = [
        "----------------------------------------",
        "Server: #{ summoner_model.server }",
        "Summoner name: #{ summoner_model.name }",
        "Summoner level: #{ summoner_model.level }",
        "----------------------------------------",
        "1. Matches details",
        "2. Ranking details",
        "3. Champion suggestion",
        "4. General advices",
      ]
    end
  end

  class MatchesMenu < BasicMenu
    def display_matches_info(match_models, champion_models)
      @data = []
      (1...match_models.size).each do |match_index|
        match = match_models[match_index]

        champion = champion_models.select { |champion| match.champion_id == champion.key }[0].name

        @data << [
          "----------------------------------------",
          "Game #{ match_index }",
          "Champion: #{ champion }",
          "Date: #{ match.create_date }",
          "Game Mode: #{ match.game_mode }",
          "Game Type: #{ match.game_type }",
          "Game Subtype: #{ match.sub_type }",
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
        "Date: #{ match.create_date }",
        "Game Mode: #{ match.game_mode }",
        "Game Type: #{ match.game_type }",
        "Game Subtype: #{ match.sub_type }",
        "----------------------------------------",
        "Match Stats:",
        "Kills: #{ stats.champions_killed }",
        "Deaths: #{ stats.champions_killed }",
        "Assists: #{ stats.assists }",
        "Minions killed: #{ stats.minions_killed }",
        "Jungle monsters killed in your jungle: #{ stats.neutral_minions_killed_your_jungle }",
        "Jungle monsters killed in enemy jungle: #{ stats.neutral_minions_killed_enemy_jungle }",
        "Wards killed: #{ stats.ward_killed }",
        "Wards placed: #{ stats.ward_placed }",
        "Gold earned: #{ stats.gold_earned }",
        "Gold spent: #{ stats.gold_spent }",
        "Item Build: #{ item_build }",
        "Total damage dealt: #{ stats.total_damage_dealt }",
        "Total damage taken: #{ stats.total_damage_taken }",
        "Total time of crowd control dealt: #{ Time.at(stats.total_time_crowd_control_dealt).gmtime.strftime("%R:%S") }",
        "Game duration: #{ Time.at(stats.time_played).gmtime.strftime("%R:%S") }",
        "Result: #{ stats.win == true ? "Win" : "Lose"  }",
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
          "#{ blue_player[:name] }",
          "Summoner Level #{ blue_player[:level] }",
          "#{ blue_player[:champion] }",
          "#{ purple_player[:champion] }",
          "Summoner Level #{ purple_player[:level] }",
          "#{ purple_player[:name] }"
        ]
      end

      players << "-" * 121
    end
  end

  class RankingMenu < BasicMenu
    def display_ranking_stats(stats)
      @data = [
        "Season 4 Ranked Stats: ",
        stats.champions.map do |champion|
          [
            "-----------------------",
            "#{ champion.name }",
            "Total games: #{ champion.total_games }",
            "Total kills: #{ champion.kills }",
            "Average kills: %0.1f" % [champion.average_kills],
            "Total deaths: #{ champion.deaths }",
            "Average deaths: %0.1f" % [champion.average_deaths],
            "Total assists: #{ champion.assists }",
            "Average assists: %0.1f" % [champion.average_assists],
            "Total minions killed: #{ champion.minions_killed }",
            "Average minions per game: %0.1f" % [champion.average_minions],
            "Total first bloods: #{ champion.first_bloods }",
            "First blood probability: %0.1f" % [champion.first_blood_probability],
            "Most kills in a game: #{ champion.max_champions_killed }",
            "Win ratio: %0.1f %" %[champion.win_ratio * 100],
            "-----------------------"
          ]
        end
      ]
    end
  end

  class ChampionSuggestionMenu < BasicMenu
    def display_suggestions(suggestions)
      @data = %w(-------------------)
      suggestions.each do |s|
        @data << "Similar champion to #{ s[:original].name} is #{ s[:similar].name }"
      end
      @data << "-------------------"
    end
  end

  class GeneralAdviceMenu < BasicMenu
    def display_general_advice(checklist)
      @data = %W(#{ "Here are some tips according to your recent games:" })
      if checklist[:jungle_cs] == :not_ok
        @data << "- Your creep score in the games you are jungling is a bit low. Try aiming for 5 cs/minute!"
      elsif checklist[:jungle_cs] == :ok
        @data << "- Great farm for a jungler, now it's time to focus on improving the ganks!"
      elsif checklist[:jungle_cs] == :not_available
        @data << "- You haven't played as a jungler recently. The best players know how to play each role and they are rarely surprised. Try exploring new roles and champions."
      end

      if checklist[:average_cs] == :not_ok
        @data << "- Your creep score in the games you are not jungling is a bit low. Try aiming for 8 cs/minute!"
      elsif checklist[:average_cs] == :ok
        @data << "- Great farm in your carry games. Aim for more playmaking."
      end

      if checklist[:average_deaths] == :not_ok
        @data << "- You are dying a lot in your games. In solo queue the only person that matters is YOU. Stay alive!"
      elsif checklist[:average_deaths] == :ok
        @data << "- You are playing pretty safely. Maybe try to be a bit more aggressive."
      end

      if checklist[:average_wards] == :not_ok
        @data << "- You aren't providing your team with enough vision. Vision is really important for keeping advantages and closing games!"
      elsif checklist[:average_wards] == :ok
        @data << "- Great warding in your recent games. See if you can invest some money into permanent items."
      end
    end
  end

  class UltimateBraveryMenu < BasicMenu
    def display_menu
      puts [
        @data,
        "B. Back",
        "Q. Quit"
      ]
    end

    def display_build(build)
      @data = [
        "Ultimate Bravery challenges you to play with a randomly selected build.",
        "Here is the build this time: ",
        "Champion: #{ build[:champion] }",
        "Summoner spell 1: #{ build[:summoner_spell1] }",
        "Summoner spell 2: #{ build[:summoner_spell2] }",
        "Item build: #{ build[:item_build].join(", ") }"
      ]
    end
  end
end