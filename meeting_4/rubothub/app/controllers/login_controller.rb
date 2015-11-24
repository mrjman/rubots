class LoginController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: user_params[:email])

    if @user.present? && @user.password == user_params[:password]
      session[:user_id] = @user.id

      redirect_to root_path, notice: 'Successfully logged in!'
    else
      new_user = User.new

      new_user.errors.add(:base, 'Login attempt invalid')

      @user = new_user

      flash.alert = 'Could not log in.'

      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
