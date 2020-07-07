require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end 
  
  def parse_json
    program = JSON.parse(self.get_requester)
    program.collect do |requests| 
      requests["agency"]
    end 
  end 
end 
programs = GetRequester.new 
puts programs.parse_json.uniq 
#requester = GetRequester.new.get_requester
#puts requester
