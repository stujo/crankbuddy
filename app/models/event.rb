class Event < ActiveRecord::Base
  belongs_to :user
   validates :event_name, presence: true
   validates :date, presence: true
   validates :time, presence: true
   validates :address, presence: true
end
