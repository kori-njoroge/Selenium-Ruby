require 'yaml'
require 'selenium-webdriver'

begin
  # Load data from the YAML files
  config_data = YAML.load(File.read('c:/Users/GideonKoriNjoroge/Documents/Kori/Selenium-Ruby/selenium/config.yaml'))
  yaml_data = YAML.load(File.read('c:/Users/GideonKoriNjoroge/Documents/Kori/Selenium-Ruby/selenium/record.yaml'))
  
  puts yaml_data
  # puts config_data

  # Declare data objects
  browser_type = config_data['browser']
  record_type = config_data['record']
  # Convert the record_type string into an array
  record_arr = record_type.split(",")

  # Iterate over each record
  record_arr.each do |record|
    # Check if the record exists in yaml_data
    unless yaml_data.key?(record)
      puts "Record #{record} not found in yaml_data, skipping..."
      next
    end

    # Declare local variables
    user_name = yaml_data[record]['username']
    user_password = yaml_data[record]['password']

    # Check if username and password are not nil
    if user_name.nil? || user_password.nil?
      puts "Missing username or password for record #{record}, skipping..."
      next
    end

    # Launch the browser
    driver = Selenium::WebDriver.for :"#{browser_type}"
    driver.manage.timeouts.implicit_wait = 10
    driver.manage.window.maximize
    driver.navigate.to 'https://notlims-app.x10.mx/profile/file_system/login'
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { driver.find_element(name: 'email') }

    # Find and interact with the username textbox element
    username_field = driver.find_element(name: 'email')
    username_field.clear
    username_field.send_keys(user_name)

    # Find and interact with the password text box
    password_field = driver.find_element(name: 'password')
    password_field.clear
    password_field.send_keys(user_password)

    # Click the login button
    login_button = driver.find_element(name: 'login')
    login_button.click
    sleep(3)

    # Validate the title
    if driver.title == "Files"
      puts "Test Passed for record #{record}"
    else
      puts "Test Failed for record #{record}"
    end

    # Close the browser
    driver.quit
  end

rescue Errno::ENOENT
  puts "File not found: config.yaml or record.yaml"
rescue Psych::SyntaxError => e
  puts "YAML syntax error occurred: #{e.message}"
rescue => e
  puts "An error occurred: #{e.message}"
end




# require 'yaml'
# require 'selenium-webdriver'

# # Create an object to read data from the YAML file.
# config_data = YAML.load(File.read('c:/Users/GideonKoriNjoroge/Documents/Kori/Selenium-Ruby/selenium/config.yaml'))
# yaml_data = YAML.load(File.read('c:/Users/GideonKoriNjoroge/Documents/Kori/Selenium-Ruby/selenium/record.yaml'))


# puts yaml_data
# # puts config_data

# # Declare data objects
# browser_type = config_data['browser']
# record_type = config_data['record']

# # puts "==============================="
# # puts browser_type
# # puts record_type
# # # convert the data hash into array
# record_arr = record_type.split(",")
# record_arr.each{|record|

# # Declare local varibales
# username = yaml_data[record]['username']
# password = yaml_data[record]['password']

# # launch the browser
# driver = Selenium::WebDriver.for :"#{browser_type}"
# driver.manage.timeouts.implicit_wait = 10
# driver.manage.window.maximize
# driver.navigate.to 'https://notlims-app.x10.mx/profile/file_system/login'
# wait = Selenium::WebDriver::Wait.new(:timeout => 10)
# wait.until {driver.find_element(:name => 'email')}

# # find_element - finds the username textbox element
# user_name = driver.find_element(:name, "email")
# user_name.clear

# # Type the value of the username
# user_name.send_keys(username)

# # finding the password text box
# user_password = driver.find_element(:name, "password")
# user_password.clear

# # type the value of the password
# password.send_keys(password)

# login_button = driver.find_element(:name, "login")
# login_button.click
# sleep(3)

# # Validate the title
# if driver.title == "Files"
#     puts "Test Passed"
# else
#     puts "Test Failed"
# end

# }