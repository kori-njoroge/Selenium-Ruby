# Login Validation Testcase
require 'selenium-webdriver'

# launch the firefox browser
driver = Selenium::webDriver.for :firefox

# Maximize the window
driver.manage.window.maximize

# Navigate to the website
driver.get "https://notlims-app.x10.mx/profile/file_system/login"


# find_element - finds the username textbox element
username = driver.find_element(:name, "email")