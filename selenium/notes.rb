=begin

1. IMAGE/PICTURES/LOGO AUTOMATION
home_page_logo = driver.find_element(:xpath, "//img[@src='/assets/img/logo.png'][@ALT="Logo Logo"]")

2. ASSERTING USING HEADER
home_page_header = driver.find_element(:xpath, "//h2[contains(text(),'The Heading of the Page')]")

3. CHECKBOXES & DROPDOWNS
the_checkbox = driver.find_element(:xpath. "//div[contains(text(),'checkbox Value')][@role = 'checkbox']")
the_checkbox.click

4. RADIO BUTTONS
radio_button = driver.find_element(:xpath, "//input[@name = 'radio btn name'][@value='radio btn value']")
radio_button.click

5. DROP DOWNS
    a. Find the drop down element
        dropdown_element = driver.find_element(:xpath, "//select[@name='passCount']")
    b. Find the optionse from the dropdown
        options = driver.find_element = dropdown_element.find_elements(:tag_name, 'Option')
    c. Loop untill you find the correct option
        options.each{|value| value.click if value == "Desired option"}

6. CALENDAR
    a. current_calendar = driver.find_element(:xpath, "//table[@class ='datapicker']")
    b. Array to get all the dates of the current calendar
        column_calendar = current_calendar.find_elements(:tag_name, 'td')
        my_day = 22
    c. Loop untill ypur desired date is found
    d. Once the day is found, click on it
        column_calendar.each{|day|
            puts day.text
        if day.text =="#{my_day}"
            day.find_element(:xpath,"//button[contains(text(), '#{my_day}')]").click
        break
        end}

7. ALERTS AND POPUPS
    a. Create an alert object to switch to alerts
        alert = driver.switch_to.alert
    b. click on the alert Box
        alert.accept
    c. Dismiss/accept the alert Box
        alert.dismiss
        alert.accept

8. Iframes
    a. switch to iFrames
        driver.switch_to_iframe("id of the iframe ")
        email_textbox = driver.find_element(:id , "lid")
        email_textbox.send_keys("test@test.com") -> typing into a textbox in an inframe

    b. Switch out of the iframe if need be
        driver.switch_to.parent_frame

9. AUTOMATION FOR AN APPLICATION THAT OPEN A NEW TAB
    a. driver.find_element(:link_text, "click here").click
        puts driver.title
    b. Switch to the first window
        driver.switch_to_window(driver.window_handles.first)
        puts "First window title: " + driver.title
    c. Switch to the last window
        driver.switch_to.window(driver.window_handles.last)
        puts "New window title: "+ driver.title


10. CAPTURING SCREENSHOTS
    driver.save_screenshot("homepage.png")


=end