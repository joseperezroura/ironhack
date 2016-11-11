class ConcertsController < ApplicationController

	def index

		@concerts = Concert.all
							
	render :index
	
	end

	def new
		
		@concerts = Concert.new
		
		render :new

	end

	def create
		@concerts = Concert.new(
			:name => params[:concert][:name],
			:venue => params[:concert][:venue],
			:city => params[:concert][:city],
			:date => params[:concert][:date],
			:price => params[:concert][:price],
			:description => params[:concert][:description])
		@concerts.save

		redirect_to concerts_path(@concerts)

	end



end
