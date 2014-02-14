require 'net/http'
require 'json'

module Transport
  def self.send_request(uri)
    result = {}
    response = Net::HTTP.get_response(uri)
    
    if response.is_a?(Net::HTTPSuccess)
      result[:status] = :success
      result[:json] = JSON.parse response.body
    else
      result[:status] = :failed
    end
  end
end