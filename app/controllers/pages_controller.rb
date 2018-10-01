class PagesController < ApplicationController
	#before_action :authenticate_user!, except: [:index, :help]

    # get actions
	def index
	   only_avalible
	end

	def help
	end

	def sorted
	  @tasks = only_avalible.where(task_type: params[:task_type])
	end

	# post actions

	private

	def only_avalible
	  if current_user
		started_tasks_id = UserTask.where(user_id: current_user.id, status: "started").pluck(:task_id)
		@tasks = Task.where.not(id: started_tasks_id).where(status: 'active')
	  else
	  	@tasks = Task.where(status: 'active')
	  end
	end
end
