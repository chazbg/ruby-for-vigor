module Protocol
  class Champions
    def self.create_request(region = "NA")
      URI("#{URI_DOMAIN}#{region.downcase}/v1.1/champion?api_key=#{API_KEY}")
    end
  end

  class GamesInfo
    def self.create_request(region = "", summoner_id = "")
      URI("#{URI_DOMAIN}#{region.downcase}/v1.3/game/by-summoner/#{summoner_id}/recent?api_key=#{API_KEY}")
    end
  end

  class LeagueInfoChallenger
    def self.create_request(region = "")
      URI("#{URI_DOMAIN}#{region.downcase}/v2.3/league/challenger?api_key=#{API_KEY}")
    end
  end
  
  class LeagueInfoEntry
    def self.create_request(region = "", summoner_id = "")
      URI("#{URI_DOMAIN}#{region.downcase}/v2.3/league/by-summoner/#{summoner_id}/entry?api_key=#{API_KEY}")
    end
  end

  class LeagueInfo
    def self.create_request(region = "", summoner_id = "")
      URI("#{URI_DOMAIN}#{region.downcase}/v2.3/league/by-summoner/#{summoner_id}?api_key=#{API_KEY}")
    end
  end

  class SummonerSummary
    def self.create_request(region = "", summoner_id = "")
      URI("#{URI_DOMAIN}#{region.downcase}/v1.2/stats/by-summoner/#{summoner_id}/summary?api_key=#{API_KEY}")
    end
  end
  
  class SummonerByName
    def self.create_request(region = "", names = [])
      URI("#{URI_DOMAIN}#{region.downcase}/v1.3/summoner/by-name/#{names.join(',')}?api_key=#{API_KEY}")
    end
  end

  class SummonerMasteries
    def self.create_request(region = "", summoner_ids = [])
      URI("#{URI_DOMAIN}#{region.downcase}/v1.3/summoner/#{summoner_ids.join(',')}/masteries?api_key=#{API_KEY}")
    end
  end

  class SummonerRunes
    def self.create_request(region = "", summoner_ids = [])
      URI("#{URI_DOMAIN}#{region.downcase}/v1.3/summoner/#{summoner_ids.join(',')}/runes?api_key=#{API_KEY}")
    end
  end

  private

  URI_DOMAIN = "http://prod.api.pvp.net/api/lol/".freeze
  API_KEY = "3cc8e32a-8370-46eb-89c6-be4ebaf0bbe4".freeze
end