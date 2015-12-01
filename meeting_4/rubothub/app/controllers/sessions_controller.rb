class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil

    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if params[:user][:password] == params[:user][:password_confirmation]
      if @user.save
        session[:user_id] = @user.id

        redirect_to root_path, notice: 'Successfully Signed up!'
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
