require 'net/http'
require 'json'

class Transport
  def send_request(uri)
    result = {}
    response = Net::HTTP.get_response(uri)

    if response.is_a?(Net::HTTPSuccess) and response.body != ""
      result[:status] = :success
      result[:json] = JSON.parse response.body
    else
      result[:status] = :failed
    end

    result
  end
end