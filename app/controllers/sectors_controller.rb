class SectorsController < ApplicationController
	def index
		@sectors = Sector.all
	end
end

	def new
		@sectors = Sectors.new
	end
