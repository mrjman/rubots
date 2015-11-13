class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_path(@user), notice: 'Thanks for signing up!'
    else
      alert_string = 'Could not complete registration. Please fix the errors below'
      flash.now.alert = alert_string
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
