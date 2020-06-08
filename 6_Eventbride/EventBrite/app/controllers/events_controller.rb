class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
    @event = Event.new
  end

  def show
    @admin = User.find(@event.admin_id)
    @guests = @event.users
  end

  def create
    @event = Event.new(start_date: params[:start_date], duration: params[:duration], title: params[:title], description: params[:description], price: params[:price], location: params[:location], admin_id: current_user.id)
    @attendance = Attendance.new(user_id: current_user.id, event_id: @event.id)

    if @event.save
      flash[:success] = "L'évènement a bien été créé."
      @attendance.save
      # redirect_to event_path(@event.id)
      redirect_to root_path
    else
      flash[:echec] = "L'évènement n'a pas été créé, entrées incorrèctes"
      redirect_to new_event_path
    end
  end

  def destroy
    @event.destroy
    flash[:alert] = "L'évènement a bien été supprimé!"
    redirect_to root_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

end
