=begin
1. IMPLICIT WAIT - Tells the Webdriver to poll the DOM for a certain amount of time when trying to find an element or elements if they are not immediately available

driver.manage.timeouts.implicit_wait = 10 -> waits for 10 seconds

2. EXPLICIT WAIT - code defined to wait for a certain condition to occur before processing further in the code

wait = Selenium::WebDriver::Wait.new(:timeout => 5) -> waits for 5 seconds
wait.until{driver.find_element(:xpath, "//input[@name='findFlights']")}

=end