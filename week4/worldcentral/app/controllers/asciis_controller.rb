class AsciisController < ApplicationController
def new		
		render 'new'
end
def create
    @text = params[:asciis][:asciis_user_text]
    
    @word_count = @text.split(" ").length

    render "results"  
  end
end







