require 'net/https'
require 'json'

module Transport
  class HTTPTransport
    def send_request(uri)
      result = {}
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Get.new(uri.request_uri)

      response = http.request(request)

      if response.is_a?(Net::HTTPSuccess) and response.body != ""
        result[:status] = :success
        result[:json] = JSON.parse response.body
      else
        result[:status] = :failed
      end

      result

    rescue SocketError => e
      puts "Socket error: #{ e }"
      abort("Check internet connection")
    end
  end
end