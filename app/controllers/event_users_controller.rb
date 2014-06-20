class EventUsersController < ApplicationController

  def create
    current_user.event_users.create(params.require(:event_user).permit(:event_id))
    redirect_to my_events_path
  end
end
