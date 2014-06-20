class EventsController < ApplicationController
 before_action :authenticate_user!, only: [:edit, :update, :destroy, :new, :create, :my_events]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.create(event_params)
    @user_events = current_user.events
    redirect_to event_path(@event)
  end

  def my_events
    @events = current_user.events.all
  end

  def edit
    @event = Event.find(params[:id])
    # if @event.user_id != current_user.id
    #     flash[:error]= "You don't have permission to do that"
    #       redirect_to events_path
    # end
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
     @event = Event.find_by_id(params[:id])
      @event.destroy
      redirect_to request.referer
  end

  private
  def event_params
      params.require(:event).permit(:event_name, :description, :date, :time, :address, :location, :difficulty)
  end
end
