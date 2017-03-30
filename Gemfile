source 'https://rubygems.org'
ruby ENV['CUSTOM_RUBY_VERSION'] || '2.3.3'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.rc2', '< 5.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.x'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.2'

# Facebook OAuth2 Strategy for OmniAuth
gem 'omniauth-facebook'

# Rails forms made easy
gem 'simple_form', '~> 3.2', '>= 3.2.1'

# Use Refile for file uploads
gem 'sinatra', github: 'sinatra'
gem 'refile', github: 'refile', require: 'refile/rails'
gem 'refile-mini_magick', '~> 0.2.0'

# Use Bootstrap as the front-end framework
gem 'bootstrap-sass', '~> 3.3.6'
gem 'sass-rails', '>= 3.2'

# Sophisticated paginator for Rails
gem 'kaminari'

# Font-Awesome Sass gem for use in Ruby/Rails projects
gem 'font-awesome-sass', '~> 4.6.2'

# Simple, efficient background processing for Ruby
gem 'sidekiq'

# A scheduler process to replace cron
gem 'clockwork', '~> 2.0'

# Google map for Rails
gem 'gmaps4rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem "capybara"
  gem "capybara-webkit"
  gem "database_cleaner"
  gem "email_spec"
  gem "factory_girl_rails"
  gem "faker"
  gem "shoulda-matchers", require: false
  gem "timecop"
  gem "webmock"
end

group :production do
  # Performance management system
  gem 'newrelic_rpm'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
