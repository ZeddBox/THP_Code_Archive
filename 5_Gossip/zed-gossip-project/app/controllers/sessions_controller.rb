class SessionsController < ApplicationController

  def new
    if current_user
      redirect_to '/'
    end
    @user = User.new
  end

  def create
    @user = User.new
    if current_user
      redirect_to '/'
    end
    # cherche s'il existe un utilisateur en base avec l’e-mail
    @user = User.find_by(email: params[:email])

    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if @user && @user.authenticate(params[:password])
      if params[:remember_me]
        remember(@user)
        log_in(@user)
      else
        log_in(@user)
      end
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render 'sessions/new'
    end    
  end

  def destroy
    @user = User.new  
    log_out(@user)  
    redirect_to :root 
  end
end
