class TasksController < ApplicationController
    before_action :authenticate_user!, except: [:task_info]

	def task_info
	  @task= Task.find(params[:id])
	end

	def new
	end

	def create
		task = current_user.tasks.create(task_params)
		redirect_to root_path
	end

	private

	def task_params
	    params.require(:task).permit(:description, :goal, :task_type, :task_url, :amount)
	end

end



#Remember
 #render json: {errors: task.errors}