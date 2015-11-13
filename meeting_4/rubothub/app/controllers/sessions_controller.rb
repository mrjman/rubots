class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: user_params[:email], password: user_params[:password])

    if @user.present?
      notice_string = "Successfully signed in"
      redirect_to user_path(@user), :notice => notice_string
    else
      @user = User.new
      flash.now.alert = 'Could not log in. Please fix errors below.'
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
