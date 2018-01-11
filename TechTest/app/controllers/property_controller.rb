class PropertyController < ApplicationController
  def new
    response = HTTParty.get("http://index1.homeflow.co.uk/places?api_key=xxxxxxxxxxxx&search[name]=brighton")
    @test =  response["result"]["locations"]["elements"]

  end
end
