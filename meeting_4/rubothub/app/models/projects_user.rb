class ProjectsUser < ActiveRecord::Base
  validates :user, presence: true
  validates :project, presence: true

  belongs_to :user, inverse_of: :projects_users
  belongs_to :project, inverse_of: :projects_users
end
