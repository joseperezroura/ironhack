class AsciisController < ApplicationController

	def new
		
		render 'new'
	
	end

	def create
		
		x = Artii::Base.new
		
		@text = params[:asciis][:user_text]
		
		@x = x.asciify(@text)
		
		render 'results'
	end

end


ActionController::InvalidAuthenticityToken


