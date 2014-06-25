class EventUsersController < ApplicationController

  def create
    current_user.event_users.create(params.require(:event_user).permit(:event_id))
    redirect_to my_events_path

  end

  # def counter
  #    @event_user.join_counter = @event_user.join_counter + 1

  # end
end

# helper_method :counter
# def counter
#      @event_user.join_counter = @event_user.join_counter + 1
#   end
