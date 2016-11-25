source 'https://rubygems.org'


gem 'rails', '5.0.0'
gem 'sqlite3', '1.3.12'
gem 'sass-rails', '5.0.6'
gem 'uglifier', '3.0.3'
gem 'jbuilder', '2.6.0'
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
  gem 'pry', '0.10.4'


  # Some gems for integration tests
  gem 'capybara-rails', '0.0.2'

  gem 'minitest-rails'

  gem 'minitest-rails-capybara'


  # Manage security
  gem 'brakeman', require: false

  # Overcommit
  gem 'overcommit'

  # Better errors - more descriptive for development
  gem 'better_errors', '2.1.1'

end

gem 'rails-controller-testing', '1.0.1'

group :development, :test , :performance do
  gem 'rails-perftest'
  gem 'ruby-prof'
end

gem 'simplecov', require: false, group: :test

# Manage environnement variables
gem 'dotenv-rails'

