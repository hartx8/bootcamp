class CompletedTasksController < ApplicationController
  before_action :authenticate_user!
  def my_completed
  	@tasks = CompletedTask.where(id: current_user.id, paid: false)
  end
end
