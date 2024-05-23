require 'selenium-webdriver'

# setting up the browser to run
Before do
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.window.maximize
end

After do
  @driver.quit
end
