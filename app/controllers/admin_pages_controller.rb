class AdminPagesController < ApplicationController
  before_action :authenticate_user!
	def main
      authorize(current_user)
	end

	private
end
