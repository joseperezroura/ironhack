class TimeEntriesController < ApplicationController

	def index
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries
		render :index
	end

	def new
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.new
		render :new
	end

	def create	
		@my_project = Project.find(params[:project_id])		
		@my_entry = @my_project.time_entries.new(entry_params)
		if @my_entry.save
			redirect_to "/projects/#{@my_project.id}/time_entries"
		else
			render :new
		end
	end

	def edit
		@my_project = Project.find params[:project_id]
		@my_entry = @my_project.time_entries.find params[:id]

		render :edit

	end

	def update
		@my_project = Project.find params[:project_id]
		@my_entry = @my_project.time_entries.find params[:id]
		if @my_entry.update(entry_params)
		redirect_to "/projects/#{@my_project.id}/time_entries"
		else
		render :edit
		end
	end


	private
	def entry_params
		params.require(:time_entry).permit(:hours, :minutes, :date, :comments)

		# params[:time_entry][:hours]
	end
end

# (
# 			hours: params[:time_entry][:hours],
# 			minutes: params[:time_entry][:minutes],
# 			date: params[:time_entry][:date],
# 			comments: params[:time_entry][:comments])





# (hours: params[:time_entry][:hours],
# 			minutes: params[:time_entry][:minutes],
# 			date: params[:time_entry][:date],
# 			comments: params[:time_entry][:comments])		
