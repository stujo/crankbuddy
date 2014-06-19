# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(email: "shmillfill@shmoe.com", password: 12345678, password_confirmation: 12345678)

#Event.create(event_name: 'asd', description: 'asdfasdf', date: '3/25/12', time: '1 pm', address: '414 Basdfsd')

5.times do
  user.events.create(event_name: Forgery(:lorem_ipsum).words(2, :random =>true), description: Forgery(:lorem_ipsum).words(2, :random =>true),address: Forgery(:lorem_ipsum).words(2, :random =>true),date: Forgery(:lorem_ipsum).words(5, :random =>true), time: Forgery(:lorem_ipsum).words(5, :random =>true))
end