class Project < ActiveRecord::Base
  validates :title, presence: true

  has_many :user_projects, inverse_of: :project, dependent: :destroy
  has_many :users, through: :user_projects
end
