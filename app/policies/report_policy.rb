class ReportPolicy < ApplicationPolicy

	def update?
		user.admin?
	end

	def index?
		user.admin?
	end
end