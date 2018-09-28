class TasksController < ApplicationController
    before_action :authenticate_user!, except: [:task_info]

	def task_info
	  @task= Task.find(params[:id])
	end

	def new_task
	end

	def create
		Task.new(description: params[:description], goal: params[:goal], task_type: params[:task_type], url_to: params[:url_to])
	end

end
