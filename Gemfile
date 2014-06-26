source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
# Use postgresql as the database for Active Record

#post gress gem
gem 'pg'

#this does our pagination
gem 'kaminari'
# does the mapping function with google maps/static map uses lat long via address
gem 'geocoder'
# gem 'bootstrap-sass'
# gem 'bootstrap-generators'
gem "therubyracer"

#sets up boostrap path gives it a higher priority for load
gem "less-rails" 
#loads bootstrap
gem "twitter-bootstrap-rails"
#creates login functionality
gem 'devise'
# Use SCSS for stylesheets
#stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development
#enables serving assets in production and setting your logger to standard out
gem 'rails_12factor', group: :production

group :development do 
  #does the Env file and funciton allows you to run your app in different enviornments
  gem 'dotenv-rails'
  #turns off the Rails asset pipeline log. This means that it suppresses messages in your development log
  gem 'quiet_assets'
  #shows the color shemes in ruby 
  gem 'awesome_print'
  # allows you to interupt execution and access database for debugging
  gem 'pry-rails'
  gem 'pry-byebug'
  gem "better_errors"
  
end


group :development, :test do
  #rspec replaces the test unit that is default in rails
  gem 'rspec-rails', '2.99'
  #helps simplify and set up more concise tests
  gem 'shoulda-matchers'
  #Making meaningful development data for your application. more useful seed data
  gem 'forgery'
end

gem "binding_of_caller"

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

