class CompletedTask < ApplicationRecord
	has_many :users
	has_many :tasks
	validates :user, presence: true
	validates :task, presence: true 
end
