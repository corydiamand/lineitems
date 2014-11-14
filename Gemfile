source 'https://rubygems.org'

#set ruby verison for heroku
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
	gem 'rails_12factor'
end

group :development, :test do
	#add rspec for testing
	gem 'rspec-rails', '~> 3.0.0'
	#factory girl for fixtures
	gem 'factory_girl_rails'
end

group :development do
	 #guard to run rspec on changes to the code
	 gem 'guard-rspec', require: false
	 #annotate to see all model attributes
	 gem 'annotate'
end

group :test do
	#cleaning the rspec database between tests
	gem 'database_cleaner', git: 'git@github.com:bmabey/database_cleaner.git'
end

#twitter bootstrap to get a ui up quickly
gem 'bootstrap-sass', '~> 3.2.0'

#for adding vendor prefixes
gem 'autoprefixer-rails'

#add stripe for credit card billing
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'

#add devise for admin authentication
gem 'devise'

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
