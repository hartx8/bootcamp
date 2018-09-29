class UserTasks < ApplicationRecord
	enum status: [:started, :done, :rejected]
	has_one :task_id
	has_one :user_id
	validates :user_id, presence: true
	validates :task_id, presence: true 
end
