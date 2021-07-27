# Alternate methods from the official solution given below:

require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

  # This commented out code is part of the first, original
  # committed code that passed all of the tests
  #
  # attr_accessor :url
  # 
  # def initialize(str)
  #   @url = str
  # end
  #
  # def parse_json
  #   data = JSON.parse(self.get_response_body)
  # end    

  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  # This alternate method from the official solution also works:
  def initialize(str)
    @url = str
  end

  # This alternate method from the official solution also works:
  def parse_json
    data = JSON.parse(get_response_body)
  end    
end
