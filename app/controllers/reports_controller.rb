class ReportsController < ApplicationController
	before_action :authenticate_user!

    def new
	end
   
	def create # post
		current_user.reports.create(report_params)
	end

	def update # patch

	end

	def index
		@reports= Report.where(answer: nil)
	end

	private

	def report_params
	   params.require(:report).permit(:user_id, :text)
	end
end
