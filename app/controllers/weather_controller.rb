require 'weather-api'
require 'rubygems'

class WeatherController < ApplicationController
  protect_from_forgery with: :null_session
  def index
	puts "--------------- In Index -----------------"
	@allRequest = Request.all
	puts "# of bids = #{@allRequest.size}"
	
  end

  def enterPostcode
	puts "--------------- In Enter Postcode -----------------"
	@name = params[:nameInput]
	@city = params[:locationInput]
	@response = Weather.lookup_by_location(@city, Weather::Units::CELSIUS)
	postcode = "0000000"
	@temp = @response.condition.temp.to_s
	@sky = @response.condition.text
	#responds_to do |format|
	#flash[:success] = 'Todo was successfully created.'
	#format.html { redirect_to weather_url}
#end
	map = {"name" => @name, "postcode" => postcode, "city" => @city, "temp" => @temp, "sky" => @sky}
	newRow = Request.new(map)
	respond_to do |format|
		if newRow.save
			puts "Success!"
			format.html {redirect_to weather_url}
		else
			format.html {redirect_to "/"}	# Can create an error page
		end
	end
  end

 

  def handlePost
  	if params[:commit] == "Enter Info"
  		enterPostcode
  	# elsif params[:commit] == "Get Leader"
  	# 	getLeader
  	end
  end
end