class UsersController < ApplicationController
  before_action :check_if_logged_in, only: [:show]



  # renders the home page
  def home
     get_current_user
      render :home
  end

  def index
    @users = User.all
    
    render :index
  end

  # renders the signup form
  def new
    if session[:user_id]
      flash[:login_success] = "You already have an account"
      redirect_to "/"
    else
      render :new
    end
  end

    def show
        get_current_user
        render :show   
    end

  # receives form and creates a user from that data
    def create
    user = User.new(user_params)
      if user.save
      redirect_to '/'
      else
      redirect_to '/signup'
      end
    end   

  private

  def user_params
     params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def user_logged_in?
    if session[:user_id]
      true
    else
      false
    end
    def check_if_logged_in
      if session[:user_id] == nil
        flash[:need_to_login_message] = "You need to login to see the profile page."
        redirect_to "/login"
    end
  end
end
end
