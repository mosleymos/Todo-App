source 'https://rubygems.org'


gem 'rails', '5.0.0'
gem 'sqlite3'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'sdoc',        group: :doc

gem 'spring',        group: :development

# Rails haml templates
gem 'haml-rails', '~> 0.9'

group :development, :test do
  gem 'annotate'
  gem 'guard'
  gem 'guard-livereload'
  gem 'guard-minitest'
  gem 'rubocop', require: false
  gem 'pry'

  # Some gems for integration tests
  gem 'capybara-rails'
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'

  # Manage security
  gem 'brakeman', require: false

  # Overcommit
  gem 'overcommit'

  # Better errors - more descriptive for development
  gem 'better_errors'

end

gem 'rails-controller-testing'
gem 'simplecov', require: false, group: :test

# Manage environnement variables
gem 'dotenv-rails', groups: [:development, :test, :production]

