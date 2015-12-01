class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user

    if @user.nil
      render :show
    end
  end
end
