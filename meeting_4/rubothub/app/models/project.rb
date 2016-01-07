class Project < ActiveRecord::Base
  validates :title, presence: true

  has_many :user_projects
  has_many :users, through: :user_projects
end
