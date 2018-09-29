class Task < ApplicationRecord
  belongs_to :user
  enum task_type: [:like, :subscribe, :comment]
  enum status: [:active,:finished,:rejected]
  validates :task_url, presence: true, length: { maximum: 55 }
  validates :description, presence: true, length: { maximum: 55 } 
  validates :goal, presence: true
  validates :task_url, presence: true
  validate :enough_balance?

  private

  def enough_balance?
  	if user.balance >= user.tasks.where(status: "active").sum(:amount).to_f
  	  true
  	else
  	  errors.add(:amount, "Not enough money, silly boy")
  	end
  end
end
