class SignupController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params)

  end
end
