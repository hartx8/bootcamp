class UserPolicy < ApplicationPolicy
  def index?
  	user_admin?
  end

  def user_info?
 	  user_admin? or user
  end

  def update?
  	user_admin?
  end

  def edit
  	user_admin?
  end
    
  private

  def user_admin?
  	if user and user.admin?
  	  true
    else
      false
    end
  end
end