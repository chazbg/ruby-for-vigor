module Utils
  def self.assign_players(players)
    blue_team = []
    purple_team = []

    players.each do |player|
      case player.team_id
        when 100 then blue_team << player
        when 200 then purple_team << player
      end
    end

    [blue_team, purple_team]
  end

  def self.normalize(current_value, min_value, max_value)
    if min_value == max_value
      1
    else
      (current_value.to_f - min_value) / (max_value - min_value)
    end
  end
end