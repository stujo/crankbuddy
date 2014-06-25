class Event < ActiveRecord::Base
  belongs_to :user
   validates :event_name, presence: true, length: {minimum: 2, maximum: 25}
   validates :description, presence: true, length: {minimum: 2, maximum: 200}
   validates :date, presence: true, length: {minimum: 2, maximum: 15}
   validates :time, presence: true, length: {minimum: 2, maximum: 15}
   validates :address, presence: true, length: {minimum: 5, maximum: 60}
   validates :location, length: {maximum: 100}
   validates :difficulty, length: {maximum: 20}

   geocoded_by :address
   after_validation :geocode

   # belongs_to :users
   has_many :event_users
   has_many :users, :through => :event_users

   # def counter
   #   @event_user.count = @event_user.count + 1
   # end
end
