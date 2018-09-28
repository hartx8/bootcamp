class PagesController < ApplicationController
	before_action :authenticate_user!, except: [:index, :help]

	def index
		@tasks = Task.all
	end

	def help
	end
end
