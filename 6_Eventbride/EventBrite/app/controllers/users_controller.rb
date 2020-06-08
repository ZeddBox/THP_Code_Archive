class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def edit
    @user = current_user
    @current_user = current_user
  end

  def create
    @user = User.new(user_params)
  end

  def new
    @user = User.new
  end

  def update
    @user = current_user
    @current_user = current_user
    redirect_to edit_user_registration_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :description, :first_name, :last_name)
  end

end
