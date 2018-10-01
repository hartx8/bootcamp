class UserTask < ApplicationRecord
	enum status: [:started, :done, :rejected]
	belongs_to :task
	belongs_to :user

	validates_uniqueness_of :task, scope: :user

end
