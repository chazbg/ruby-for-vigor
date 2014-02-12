module Protocol  
  class Champions
    def initialize(region)
      @region = region
    end
    
    def createURI
      URI("#{URI_DOMAIN}#{@region.downcase}/v1.1/champion?api_key=#{API_KEY}") 
    end
  end
  
  class SummonerByName
    def initialize(region, name)
      @region = region
      @name = name
    end
    
    def createURI
      URI("#{URI_DOMAIN}#{@region.downcase}/v1.2/summoner/by-name/#{@name}?api_key=#{API_KEY}") 
    end
  end
  
  class SummonerById
    def initialize(region, id)
      @region = region
      @id = id
    end
    
    def createURI
      URI("#{URI_DOMAIN}#{@region.downcase}/v1.2/summoner/#{@id}?api_key=#{API_KEY}") 
    end
  end
  
  class SummonerSummary
    def initialize(region, summonerId)
      @region = region
      @summonerId = summonerId
    end
    
    def createURI
      URI("#{URI_DOMAIN}#{@region.downcase}/v1.2/stats/by-summoner/#{@summonerId}/summary?api_key=#{API_KEY}") 
    end
  end
  
  private
  
  URI_DOMAIN = "http://prod.api.pvp.net/api/lol/"
  API_KEY = "3cc8e32a-8370-46eb-89c6-be4ebaf0bbe4"
end