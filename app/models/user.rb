class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :validatable
  #mount_uploader :avatar, AvatarUploader

  enum role: [:user, :admin]
  has_many :tasks
  has_many :user_tasks

  validates :first_name, :last_name, :nick_name, presence: true
  validates :first_name, :last_name, :nick_name, length: { maximum: 15 }

end
