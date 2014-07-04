class Event < ActiveRecord::Base
  # this event is created by/belongs to a single user
  belongs_to :user

  # these are the validations that create safety and force people to fill out the create event form properly to my spcifications
  validates :event_name, presence: true, length: { minimum: 2, maximum: 25 }
  validates :description, presence: true, length: { minimum: 2, maximum: 200 }
  validates :date, presence: true, length: { minimum: 2, maximum: 15 }
  validates :time, presence: true, length: { minimum: 2, maximum: 15 }
  validates :address, presence: true, length: { minimum: 5, maximum: 60 }
  validates :location, length: { maximum: 100 }
  validates :difficulty, length: { maximum: 20 }

  # implements the geocoder gem using the address
  geocoded_by :address
  after_validation :geocode

  # relationship bewtween event and its users
  has_many :event_users
  has_many :users, through: :event_users
end
