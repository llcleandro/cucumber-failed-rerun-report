require "Capybara"
require "Capybara/cucumber"
require "cucumber"
require "rspec"
require 'capybara/poltergeist'
require 'capybara/rspec'
require 'httparty'
# require 'pry'
# require 'capybara/accessible'

## Loading browser defined (BROWSER=pg / BROWSER=f / without parameter chrome)

case ENV['BROWSER']
	when 'pg'
		# using poltergeist
		DRIVER = :poltergeist
		Capybara.register_driver :poltergeist_debug do |app|
		  Capybara::Poltergeist::Driver.new(app, phantomjs_options: ['--ignore-ssl-errors=yes'])
		end
	when 'ff'
		# using firefox
		DRIVER = :firefox
		Capybara.register_driver :firefox do |app|
			Capybara::Selenium::Driver.new(app, :browser => :firefox)
		end		
	else
		# using chrome
		DRIVER = :chrome
		Capybara.register_driver :chrome do |app|
			Capybara::Selenium::Driver.new(app, :browser => :chrome)
		end
end

Capybara.default_driver = DRIVER
Capybara.default_wait_time = 20

After do |scenario|
  if(scenario.failed?)
    timeNow = Time.now.strftime("%y.%m.%d-%H:%M")
      page.driver.browser.save_screenshot("reports/ERROR-#{scenario.title}--#{timeNow}.png")
      embed("reports/ERROR-#{scenario.title}--#{timeNow}.png", "image/png", "SCREENSHOT - ERROR-#{scenario.title}--#{timeNow}.png")
  end
  Capybara.reset_sessions!
end
