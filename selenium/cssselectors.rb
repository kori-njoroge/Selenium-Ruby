# require selenium webDrriver gem
require 'Selenium-webdriver'

# Lauch firefox browser
driver = Selenium::WebDriver.for :firefox
# Maximize the window
driver.manage.window.maximize

# Navigate to the website
driver.get 'https://www.allstate.com'

# Finding Elements
search_box = driver.find_element(:css, "div.col-md-6:nth-child(1) > p:nth-child(4) > a:nth-child(1)")
# Examples of css locators
# search_box = driver.find_element(:id "s_Text")
# search_box = driver.find_element(:class "keywords")
# search_box = driver.find_element(:css "input[class ='keywords']")
# search_box = driver.find_element(:css "input.keywords")
# search_box = driver.find_element(:css "input#s_Text")
# search_box = driver.find_element(:css "input[id='id$='Text']")

search_box.click