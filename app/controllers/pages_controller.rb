class PagesController < ApplicationController
	before_action :authenticate_user!, except: [:index]

	def index
		@tasks = Task.all
	end
end
