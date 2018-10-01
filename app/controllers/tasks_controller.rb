class TasksController < ApplicationController
    before_action :authenticate_user!, except: [:task_info]
	def task_info
	  @task= task  #in private method you will see
	end

	def perform
	  if task_avalible? 
		  User.find(current_user.id).user_tasks.create(task_id: params[:id])
		  redirect_to "https://twitter.com/#{Task.find(params[:id]).task_url}"
	  else
	  	  redirect_to root_path
	  end
	end

	def new # view, GET
	end

	def create
		task = current_user.tasks.create(task_params)
		redirect_to root_path
	end

	private

	def task
	  Task.find(params[:id])
	end

	def task_avalible?
	   if task.goal.eql?(task.completed)
	   	 task.update(status: "finished")
	   	 false
	   else
	   	 true
	   end
	end

	def task_params
	    params.require(:task).permit(:description, :goal, :task_type, :task_url, :amount)
	end

end



#Remember
 #render json: {errors: task.errors}