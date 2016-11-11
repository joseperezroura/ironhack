class ConcertsController < ApplicationController

	def index

		@concerts = Concert.all

		@todays_concerts = @concerts.where(date: DateTime.now..DateTime.tomorrow)
		
		@this_months_concerts = @concerts.where(date: DateTime.tomorrow..DateTime.tomorrow + 30.days)
		
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
