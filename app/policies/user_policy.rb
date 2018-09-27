class UserPolicy < ApplicationPolicy
	def index
	  redirect_to root_path if not user.admin?
	end
end