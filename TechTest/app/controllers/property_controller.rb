class PropertyController < ApplicationController
  def new
    response = HTTParty.get("http://index1.homeflow.co.uk/places?api_key=77467477edfd2689cd77796a2c4b019f&search[name]=brighton")
    @test =  response["result"]["locations"]["elements"]

  end
end
