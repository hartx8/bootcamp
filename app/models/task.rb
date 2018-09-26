class Task < ApplicationRecord
  belongs_to :user

  validates :description, presence: true, length: { maximum: 55 }  
end
