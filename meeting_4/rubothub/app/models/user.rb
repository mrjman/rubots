class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true, on: :create
  validates :password,
    format: { with: /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,}$/, multiline: true },
    allow_blank: true

  has_many :user_projects, inverse_of: :user, dependent: :destroy
  has_many :projects, through: :user_projects
end
