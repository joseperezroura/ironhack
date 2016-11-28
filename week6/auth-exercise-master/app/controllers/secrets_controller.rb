class SecretsController < ApplicationController
before_action :check_if_logged_in
before_action :check_if_admin
	def show
		render :show
	end
end
