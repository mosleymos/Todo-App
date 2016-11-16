source 'https://rubygems.org'


gem 'rails', '4.2.0'
gem 'sqlite3'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'spring',        group: :development

# Rails haml templates
gem 'haml-rails', '~> 0.9'

group :development, :test do
  gem 'annotate', '2.6.5'
  gem 'guard', '2.14.0'
  gem 'guard-livereload', '2.5.2'
  gem 'guard-minitest', '2.4.6'
  gem 'rubocop','0.43.0', require: false
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

gem 'simplecov','0.12.0' , require: false, group: :test

# Manage environnement variables
gem 'dotenv-rails', groups: [:development, :test, :production]

