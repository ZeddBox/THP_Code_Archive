class EmailController < ApplicationController
  before_action :authenticate_user!

  def index
    @email = Email.all
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { 
        redirect_to email_path(@email.id) 
      }
      format.js { }
    end
  end

  def create
    @email = Email.new(object: Faker::FunnyName.name, body: Faker::TvShows::Kaamelott.quote)

    if @email.save
      respond_to do |format|
        format.html { 
          redirect_to root_path 
        }
        format.js { }
      end
    else
      redirect_to root_path, flash: { error: 'Email not saved'}
    end
    
  end

  def update
    @email = Email.find(params[:id])
    @email.toggle(:read).save
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

end
