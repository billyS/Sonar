require "net/http"
require "uri"  
require "json"

  uri1 = URI.parse("http://index1.homeflow.co.uk/agencies/293/?api_key=77467477edfd2689cd77796a2c4b019f")

  uri2 = URI.parse("http://index1.homeflow.co.uk/properties/4631183?api_key=77467477edfd2689cd77796a2c4b019f")

  response = Net::HTTP.get_response(uri2)
  
  data = JSON.parse(response.body)
  
  puts JSON.pretty_generate(data)
  