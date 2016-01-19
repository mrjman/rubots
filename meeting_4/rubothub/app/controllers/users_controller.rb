class UsersController < ApplicationController

  before_action(:check_user, only: [:edit])

  def edit
    @user = User.find params[:id]

    @project = @user.projects.build
  end

  def show
    @user = User.find params[:id]
  end

  def update
    @user = @current_user

    redirect_to(login_path) and return unless @user.present?

    if @user.update_attributes(user_params)
      redirect_to user_path @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def check_user
    redirect_to login_path unless params[:id] == @current_user.try(:id).to_s
  end


  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
