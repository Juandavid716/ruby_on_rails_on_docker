
class UsersController < ApplicationController
  # skip_before_action :require_valid_user!
  # before_action :reset_session
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_username(params[:id])

  end

  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     session[:user_id] = @user.id
  #     flash[:success] =  'You have successfully created an account!'
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end

  # def user_params
  #   params.require(:user).permit(:username, :password, :password_confirmation)
  # end
end