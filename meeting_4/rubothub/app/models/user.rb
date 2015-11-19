class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true, format: { with: /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,}$/, multiline: true } 
end
