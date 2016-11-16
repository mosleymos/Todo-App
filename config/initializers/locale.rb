# config/initializers/locale.rb
# Snippet from  http://guides.rubyonrails.org/i18n.html
# Where the I18n library should search for translation files
I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]
I18n.default_locale = :en
