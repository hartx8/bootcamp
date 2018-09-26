class PagesController < ApplicationController

	before_action :authenticate_user!, except: [:index]
	def index
	end



	def admin_panel
	  current_user.admin?
	end
end
