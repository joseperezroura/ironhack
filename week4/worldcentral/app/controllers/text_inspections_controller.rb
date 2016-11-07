class TextInspectionsController < ApplicationController
def new
		
		render 'new' # name of view template

	end

def create
    @text = params[:text_inspection][:user_text]
    
    @word_count = @text.split(" ").length

    render "results"

   


  
  end
end


ActionController::InvalidAuthenticityToken

