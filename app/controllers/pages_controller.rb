class PagesController < ApplicationController
	before_action :authenticate_user!, except: [:index, :help]

	def index
	  if current_user
		started_tasks_id = UserTask.where(user_id: current_user.id, status: "started").pluck(:task_id)
		@tasks = Task.where.not(id: started_tasks_id)
	  else
	  	@tasks = Task.all
	  end
	end

	def help
	end
end
