class TextInspectionsController < ApplicationController
def new
		
		render 'new' # name of view template

	end

def create
    @text = params[:text_inspection][:user_text]
    
    @word_count = @text.split(" ").length

    x = @word_count * 0.22

    @y = x.round(2)

    render "results"  
  end
end


ActionController::InvalidAuthenticityToken

