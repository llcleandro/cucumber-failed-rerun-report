require "Capybara"
require "Capybara/cucumber"
require "cucumber"
require "rspec"
require 'capybara/poltergeist'
require 'capybara/rspec'
require 'httparty'
#require 'pry'
# require 'capybara/accessible'

Capybara.default_driver = :chrome


Capybara.register_driver :chrome do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

After do |scenario|
  if(scenario.failed?)
    timeNow = Time.now.strftime("%y.%m.%d-%H:%M")
      page.driver.browser.save_screenshot("reports/ERROR-#{scenario.title}--#{timeNow}.png")
      embed("reports/ERROR-#{scenario.title}--#{timeNow}.png", "image/png", "SCREENSHOT - ERROR-#{scenario.title}--#{timeNow}.png")
  end
  Capybara.reset_sessions!
end
