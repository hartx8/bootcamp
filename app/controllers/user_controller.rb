class UserController < ApplicationController
	before_action :admin_check!
  def index
  	@users = User.all
  end

  def delete
  	#User.delete.where(params)
  end

  private

   def admin_check!
	 unless current_user and current_user.admin?
    	redirect_to root_path
     end
   end
end
