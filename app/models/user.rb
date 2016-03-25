class User < ActiveRecord::Base
  has_secure_password
  has_many :user_projects
  has_many :projects, through: :user_projects
  has_many :comments
  validates :name, :email, presence: true
  validates :email, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
  }
  validates :password, length: 6..20
end
