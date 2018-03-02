class SearchController < ApplicationController
	def index
		@allRequest = Request.all
	end
end