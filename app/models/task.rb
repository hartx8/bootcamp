class Task < ApplicationRecord
  belongs_to :user
  enum type: [:like, :subscribe, :comment]
  validates :url_to, presence: true, length: { maximum: 55 }
  validates :description, presence: true, length: { maximum: 55 } 
  validates :goal, presence: true
  validates :url_to, presence: true
end
