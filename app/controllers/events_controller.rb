class EventsController < ApplicationController
  # autheniticates user as loggedin for specific method usage
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :new, :create, :my_events]

  # method to list all events
  def index
    # creates instance variable for event index in descending order and pagination
    @events = Event.order(created_at: :desc).page(params[:page]).per(7)

    # possibly add .where to previous line to create filter for only recent events
    @event = EventUser.all
  end

  # allows you to display a newly created event as well as all the
  # events you are a part of using the user_id
  def show
    @event = Event.find_by_id(params[:id])
  end

  # creates a new event
  def new
    @event = Event.new
  end

  # creates a new event for a user with certain params, and attaches the event and user via event_user table
  def create
    @event = current_user.events.create(event_params)
    @user_events = current_user.events

    # if the event saves it shows the notification and redirects you to index page
    if @event.save
      flash[:notice] = 'Your Event was created'
      redirect_to event_path(@event)

    # if the event does not save you given a notification and directed back to create page
    else
      flash[:notice] = 'Your Event was not created, please retry!'
      redirect_to new_event_path
    end
  end

  # shows a page of only the current users events
  def my_events
    @events = current_user.events.page(params[:page]).per(7)
  end

  # allows the current user to edit their events
  def edit
    @event = Event.find(params[:id])
    # if @event.user_id != current_user.id
    #     flash[:error]= "You don't have permission to do that"
    #       redirect_to events_path
    # end
  end

  # updates the event after it has been edited and redirects back tot he index page
  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  # deletes items
  def destroy
    @event = Event.find_by_id(params[:id])
    @event.destroy
    redirect_to request.referer
  end

  # sets up the parameters taht are required to create an event as well as those permited to be filled
  private
  def event_params
    params.require(:event).permit(:event_name, :description, :date, :time, :address, :location, :difficulty)
  end
end
