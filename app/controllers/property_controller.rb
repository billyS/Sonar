class PropertyController < ApplicationController
  def new

  end
  def show
    #@location = Homeflow::API::Location.find_by_county_id_and_location_id(params[:county_id], params[:location_id]).location
    response = HTTParty.get("http://index1.homeflow.co.uk/places?api_key=77467477edfd2689cd77796a2c4b019f&search[name]="+  params[:location])

    @test =  response["result"]["locations"]["elements"][0]["place_id"]

    response2 = HTTParty.get("http://index1.homeflow.co.uk/properties?api_key=77467477edfd2689cd77796a2c4b019f&search[place][id]="+@test+"&[search][channel]=sales")
    @test2 = response2["result"]["properties"]

    render json: JSON.pretty_generate(@test2)
  end

end
