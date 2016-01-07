class SessionController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if passwords_match
      if @user.save
        session[:current_user_id] = @user.id
        flash.notice = "Success"
        redirect_to user_path @user
      else
        render :new
      end
    else
      flash.alert ="Password dont match"
      render :new
    end
  end

  def passwords_match
    params[:user][:password_confirm] == params[:user][:password]
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end