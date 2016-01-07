class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 1..8 }

  has_many :projects_users
  has_many :projects, :through => :projects_users
end
