# Login Validation Testcase
require 'selenium-webdriver'

# launch the internet browser
driver = Selenium::WebDriver.for :ie

# Maximize the window
driver.manage.window.maximize

# Navigate to the website
driver.get "https://notlims-app.x10.mx/profile/file_system/login"


# find_element - finds the username textbox element
username = driver.find_element(:name, "email")
username.clear

# Type the value of the username
username.send_keys("test6@gmail.com")

# finding the password text box
password = driver.find_element(:name, "password")
password.clear

# type the value of the password
password.send_keys("user")

# locating the login button
login_button = driver.find_element(:name, "login")
login_button.click
sleep(3)

# Assert 
puts driver.title

# Validate the title
if driver.title == "Files"
    puts "Test Passed"
else
    puts "Test Failed"
end
