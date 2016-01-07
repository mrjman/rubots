class Project < ActiveRecord::Base
  validates :title, presence: true

  has_many(:projects_users)
  has_many(:users, through: :projects_users)
end
