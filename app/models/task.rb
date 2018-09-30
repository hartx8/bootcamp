class Task < ApplicationRecord
  belongs_to :user
  enum task_type: [:like, :subscribe, :comment]
  enum status: [:active,:finished,:rejected]

  validates :task_url, presence: true, length: { maximum: 55 }
  validates :description, presence: true, length: { maximum: 55 } 
  validates :goal, presence: true
  validates :goal, numericality: {greater_than_or_equal_to: 0}
  validates :task_url, presence: true
  validate  :enough_balance?

  private

  def enough_balance?
    #binding.pry
  	if (user.balance >= (user.tasks.where(status: "active").sum(:amount) + amount))&& amount > 0
  	  true
  	else
  	  errors.add(:amount, "Not enough money, silly boy")
      false
  	end
  end
end
