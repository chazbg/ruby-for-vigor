require 'net/http'
require 'json'
load 'RiotProtocol.rb'

# TODO: Use https instead of http
uri_domain = 'http://prod.api.pvp.net/api/lol/'
api_key = '3cc8e32a-8370-46eb-89c6-be4ebaf0bbe4'


#uri = URI(uri_domain + 'na/v1.1/summoner/by-name/RiotSchmick?api_key=' + api_key) 

#hash = JSON.parse(Net::HTTP.get(uri))
array = JSON.parse(Net::HTTP.get(Protocol::Champions.new('NA').createURI))

def findMax(array, attribute)
  array.map { |item| item[attribute] }.max
end

p array['champions'].select { |champion| champion['attackRank'] == findMax(array['champions'], 'attackRank') } .map { |champion| champion['name'] }
p array['champions'].select { |champion| champion['difficultyRank'] == findMax(array['champions'], 'difficultyRank') } .map { |champion| champion['name'] }
p array['champions'].select { |champion| champion['defenseRank'] == findMax(array['champions'], 'defenseRank') } .map { |champion| champion['name'] }
p array['champions'].select { |champion| champion['magicRank'] == findMax(array['champions'], 'magicRank') } .map { |champion| champion['name'] }

#-------------
summonerId = JSON.parse(Net::HTTP.get(Protocol::SummonerByName.new('EUW', 'ChazBG').createURI))['id']
p summoner = JSON.parse(Net::HTTP.get(Protocol::SummonerById.new('EUW', summonerId).createURI))
p summary = JSON.parse(Net::HTTP.get(Protocol::SummonerSummary.new('EUW', summonerId).createURI))
#-------------
#api - champion /api/lol/{region}/v1.1/champion 
#param - region (NA/EUW/EUNE) - string


#api - recent games /api/lol/{region}/v1.2/game/by-summoner/{summonerId}/recent
#param - region (NA/EUW/EUNE) - string
#param - summonerId - long


#api - leagues information /api/lol/{region}/v2.2/league/by-summoner/{summonerId}
#param - region (NA/EUW/EUNE) - string
#param - summonerId - long


#api - all kinds of player stats for all kinds of modes /api/lol/{region}/v1.2/stats/by-summoner/{summonerId}/summary
#param - region (NA/EUW/EUNE) - string
#param - summonerId - long


#api - summoner masteries /api/lol/{region}/v1.2/summoner/{summonerId}/masteries
#param - region (NA/EUW/EUNE) - string
#param - summonerId - long

#api - summoner runes /api/lol/{region}/v1.2/summoner/{summonerId}/runes
#param - region (NA/EUW/EUNE) - string
#param - summonerId - long

#api - summoner by name /api/lol/{region}/v1.2/summoner/by-name/{name}
#param - region (NA/EUW/EUNE) - string
#param - name - string