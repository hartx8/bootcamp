class UsersController < ApplicationController
  before_action :authenticate_user!
	before_action :admin_check!, except: [:user_info]
  
  def index
  	@users = User.all
  end

  def delete
  	#User.delete.where(params)
  end

  def user_info
     @user = User.find(params[:id])
  end

  private

   def admin_check!
	 unless current_user and current_user.admin?
    	redirect_to root_path
     end
   end
end
