# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.2.3'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'devise'
gem 'devise-i18n'
gem 'devise-i18n-views'
gem 'geocoder'
gem 'httparty'
gem 'kaminari'
gem 'omniauth-google-oauth2'
gem 'omniauth-line'
gem 'omniauth-rails_csrf_protection'
gem 'rails', '~> 7.1.3', '>= 7.1.3.2'
gem 'ransack', '3.2.1'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem 'jsbundling-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem 'cssbundling-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"
gem 'carrierwave', '~> 2.0'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mswin mswin64 mingw x64_mingw]
  gem 'dotenv-rails', groups: %i[development test]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'rubocop'
  gem 'rubocop-checkstyle_formatter'
  gem 'rubocop-rails'
  gem 'simplecov', require: false
  gem 'webmock'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'letter_opener_web', '~> 2.0'
  gem 'web-console'
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'mail'
  gem 'selenium-webdriver'
end

group :production do
  gem 'aws-sdk-s3', require: false
  gem 'fog-aws'
end
