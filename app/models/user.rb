class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :event_users
  has_many :events, through: :event_users # The ones I authored

  has_many :rsvps, through: :event_users, class_name: 'Event'
end
