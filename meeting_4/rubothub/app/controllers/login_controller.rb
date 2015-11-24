class LoginController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.find_by(email: user_params[:email], password: user_params[:password])

  	if (@user.present?)
		redirect_to :root, notice: 'Successfully logged in'
  	else
  		@user = User.new user_params
		@user.errors.add :email, 'Invalid credentials'
		render :new
  	end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
