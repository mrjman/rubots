class Project < ActiveRecord::Base
  has_many :projects_users
  has_many :users, :through => :projects_users
end
