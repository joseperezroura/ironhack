class ProjectsController < ApplicationController

		def index
		@projects = Project.all
		render 'index'
		end

		def new
			render 'new'
		end
end


