source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.2", ">= 7.0.2.2"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem "tailwindcss-rails"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails", "~> 5.1"
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "rack-livereload"
  # Use console on exceptions pages [https://github.com/rails/web-console]
  #gem "web-console"
  gem 'guard-livereload', '~> 2.5', require: false

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end



gem "guard-rails", "~> 0.8.1", :groups => [:test, :development]

gem "factory_bot_rails", "~> 6.2", :groups => [:development, :test]

gem "devise", "~> 4.8"

gem "faker", "~> 2.19", :groups => [:development, :test]

gem "guard-rspec", "~> 4.7", :groups => [:test, :development]

gem "capybara", "~> 3.36", :group => :test

gem "selenium-webdriver", "~> 4.1", :group => [:test, :development]

gem "parallel_rspec", "~> 2.1", :groups => [:development, :test]

gem "rails_heroicons", "~> 0.7.0"

gem "i18n-debug", "~> 1.2", :group => :development

gem "pundit", "~> 2.2"

gem "flipper", "~> 0.24.0"
gem "flipper-active_record", "~> 0.24.0"

gem "meilisearch-rails", "~> 0.5.1"

gem "acts-as-taggable-on", "~> 9.0"

gem "acts_as_votable", "~> 0.13.2"

gem "rb-gravatar", "~> 1.0"

gem "aasm", "~> 5.2"


gem "view_component"
gem "view_component_storybook"
gem 'rack-cors', :require => 'rack/cors'

gem "view_component-form", "~> 0.2.3"

gem "cucumber-rails", "~> 2.5", require: false, group: :test
gem "database_cleaner", "~> 2.0", :group => :test

gem "guard-cucumber", "~> 3.0", :group => :development
