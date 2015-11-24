class SignupController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if params[:user][:password] == params[:user][:password_confirmation]
      if @user.save
        redirect_to root_path
      else
        render :new
      end
    else
      flash.now[:alert] = 'Passwords do not match.'

      render :new
    end

  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
