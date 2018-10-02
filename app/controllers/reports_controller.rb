class ReportsController < ApplicationController
	before_action :authenticate_user!
	before_action :admin_check!, except: [:create, :new]

    def new
	end
   
	def create # post
		current_user.reports.create(report_params)
		redirect_to root_path
	end

	def update # patch
		Report.find(params[:id]).update(answer)
	end

	def index 
		@reports= Report.where(answer: nil)
	end

	private

	def answer 
		params.require(:report).permit(:answer)
	end

	def report_params
	    params.require(:report).permit(:user_id, :text)
	end

	 def admin_check!
	    authorize current_user
	 end
end
