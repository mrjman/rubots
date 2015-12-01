class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_user

  private 
  	def current_user
  		id = session[:current_user_id]
  		@current_user = User.find_by(id: id)
  	end
end
