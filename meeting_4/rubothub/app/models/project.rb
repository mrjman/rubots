class Project < ActiveRecord::Base
  has_many :projects_users, inverse_of: :project, dependent: :destroy
  has_many :users, :through => :projects_users

  validates :title, presence: true
  validates :description, presence: true
end
