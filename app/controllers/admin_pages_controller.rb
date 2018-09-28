class AdminPagesController < ApplicationController
	#before_action :admin_check!
  before_action :authenticate_user!
	def main
      authorize(current_user)
	end

	private

	# def admin_check!
	#    unless current_user and current_user.admin?
	#    	redirect_to root_path
	#    end
	# end
end
