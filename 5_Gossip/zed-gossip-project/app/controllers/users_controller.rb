class UsersController < ApplicationController

  def show
    @current_user = User.find(params[:id])
  end

  def new
    @user = User.new
    @cities = City.all
  end

  def create
    @city = City.find_by(name: params[:city])
    if @city == nil
      @city = City.create(name: params[:city])
    end

    @user = User.new(
      first_name: params[:first_name],
       last_name: params[:last_name],
        description: params[:description],
         email: params[:email],
          password: params[:password],
           password_confirmation: params[:password_confirmation],
            city_id: @city.id,
             age: params[:age])
   

    if @user.save
      if params[:remember_me]
        remember(@user)
        log_in(@user)
      else
        log_in(@user)
      end
      render 'gossips/index'
    else
      render :new
    end
  end




end
