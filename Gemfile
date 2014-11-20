source "https://rubygems.org"

ruby "2.1.5"

gem "pg"
gem "unicorn"

gem "rails",                            "4.1.6"
gem "devise",                           github: 'plataformatec/devise'

gem "activeadmin",                      github: 'activeadmin/activeadmin'
gem "activeadmin-sortable"
gem "acts_as_list"

gem "normalize-rails"
gem "sass-rails",                       github: 'rails/sass-rails'
gem "bourbon"
gem "neat"
gem "refills",                          github: 'thoughtbot/refills'

gem "coffee-rails"
gem "jquery-rails"

gem "slim-rails"
gem "high_voltage"

gem "flutie"
gem "title"

gem "carrierwave",                      github: 'carrierwaveuploader/carrierwave'
gem "mini_magick"

group :development do
  gem "quiet_assets"

  gem "better_errors"
  gem "binding_of_caller"

  gem "spring"
  gem "spring-commands-rspec"

  gem "guard"
  gem "guard-livereload", require: false
end

group :development, :test do
  gem "awesome_print"
  gem "byebug"

  gem "faker"

  gem "dotenv-rails"
  gem "pry-rails"
end

group :test do
  gem "rspec-rails", "~> 3.0.0"
  gem "factory_girl_rails"
  gem "shoulda-matchers", require: false


  gem "capybara"
  gem "capybara-webkit"
  gem "selenium-webdriver"
  gem "poltergeist"

  gem "site_prism",                     github: 'natritmeyer/site_prism'

  gem "database_cleaner"
  gem "timecop"
  gem "webmock"
end
