class UserProject < ActiveRecord::Base
  validates :user, presence: true
  validates :project, presence: true
  
  belongs_to :user, inverse_of: :user_projects
  belongs_to :project, inverse_of: :user_projects
end
