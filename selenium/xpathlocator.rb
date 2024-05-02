# require selenium webDrriver gem
require 'Selenium-webdriver'

# Lauch firefox browser
driver = Selenium::WebDriver.for :firefox
# Maximize the window
driver.manage.window.maximize

# Navigate to the website
driver.get 'https://www.allstate.com'

# Finding Elements
search_box = driver.find_element(:xpath, "//a[text()='Log in']")
search_box.click