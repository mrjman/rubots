class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user

    if params[:id] != @user.id.to_s
      redirect_to root_path, alert: 'User not authorized.'
    end
  end

  def update
    @user = current_user

    if @user.update_attributes(user_params)
      redirect_to user_path(@user), notice: 'User updated!'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
