class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  #mount_uploader :avatar, AvatarUploader

  enum role: [:user, :admin]
  has_many :tasks
  has_many :user_tasks
  has_many :reports
  #has_one_attached :avatar, styles: { thumb: "100x100>" }

  #validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :first_name, :last_name, :nick_name, presence: true
  validates :first_name, :last_name, :nick_name, length: { maximum: 15 }

end
