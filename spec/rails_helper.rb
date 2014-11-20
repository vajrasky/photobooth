ENV["RAILS_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)

require "capybara/rspec"
require "capybara/poltergeist"

require "rspec/rails"
require "shoulda/matchers"

Dir[Rails.root.join("spec/support/**/*.rb")].each { |file| require file }

RSpec.configure do |config|

  config.order = :random
  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = false

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
  end

end

ActiveRecord::Migration.maintain_test_schema!

WebMock.disable_net_connect! allow_localhost: true

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new app, :browser => :chrome
end

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new app, :js_errors => true
end

Capybara.javascript_driver = :webkit

