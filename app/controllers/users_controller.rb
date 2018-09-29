class UsersController < ApplicationController
  before_action :authenticate_user!
	before_action :admin_check!
  

  def index
  	@users = User.all
  end

  def user_info
     @user = user
  end

  def edit # get
     @user = user
  end

  def update # patch
     user.update(user_params)
  end

  private

  def user
    User.find(params[:id])
  end

  def user_params
     params.require(:user).permit(:first_name, :nick_name, :last_name, :role, :balance)
  end

   def admin_check!
     authorize current_user
   end
end
