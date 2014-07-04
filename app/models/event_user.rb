class EventUser < ActiveRecord::Base
  # this is the join table that joins the users and their events also implements the counter
  belongs_to :user
  belongs_to :event
end
