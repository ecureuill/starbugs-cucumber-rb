require 'capybara/cucumber'
require 'selenium-webdriver'
require_relative 'prints.rb'
require_relative 'helpers.rb'

World(Prints)
World(Pages)

Capybara.register_driver :headless_selenium_chrome_in_container do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless')
  options.add_argument('disable-gpu')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--no-sandbox')
  
  Capybara::Selenium::Driver.new(app, 
    :url => "http://#{EnvVariables.SELENIUM_HOST}:#{EnvVariables.SELENIUM_PORT}/wd/hub",
    :browser => :remote,
    :options => options
    )
end

Capybara.register_driver :headless_selenium_firefox_in_container do |app|
    options = ::Selenium::WebDriver::Firefox::Options.new()
    options.add_argument('--headless')
    options.add_argument('disable-gpu')
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument('--no-sandbox')

    Capybara::Selenium::Driver.new(
        app,
        browser: :remote,
        options: browser_options,
        url: "http://172.18.0.13:4444/wd/hub"
    )
end

Capybara.configure do |config|
  config.default_driver = :headless_selenium_chrome_in_container
  config.default_max_wait_time = 10
  config.run_server = false
end