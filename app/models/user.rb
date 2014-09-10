class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  belongs_to :gender
  belongs_to :city
  belongs_to :state
  belongs_to :position
  belongs_to :branch

  before_save { self.email = email.downcase }
  before_save { self.name = name.humanize.titleize }
  before_save { self.address = address.humanize }

  validates :name, :email, :gender, :birth_date, :state, :city, :position, :branch, presence: true
  validates :password, presence: true, length: { minimum: 6 }, on: :create
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password

  mount_uploader :avatar, AvatarUploader
end
