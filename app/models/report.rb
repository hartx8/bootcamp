class Report < ApplicationRecord
  belongs_to :user
  validates :text, presence: true , length: { maximum: 55}
end
