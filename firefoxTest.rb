require "rubygems"
require "selenium-webdriver"

# create object of firefox class
driver = Selenium::WebDriver.for :firefox

# navigate to automation.html
driver.navigate.to "file:///Users/sooooooooooo/Documents/CD/ruby_stack/project_selenium_automated_scripts/automation.html"

sleep 3
puts "The browser is launched."


# checking a radio button with Automation class name:
if driver.find_element(:class, "Automation").displayed?
	driver.find_element(:class, "Automation").click
	puts "Automation radio button is selected"
else
	puts "Automation radio button is not displayed"
end


sleep 3

# checking the dropdown is displayed:
if driver.find_element(:id, "Tacos").displayed?
	options = driver.find_elements(:tag_name, "option")
	options.each do |el|
		if (el.text == "Buffalo Chicken Taco")
			el.click
			break
		end
	end
end

sleep 3

# checking a checkbox with value R2D2:
if driver.find_element(:id, "r2d2").displayed?
	driver.find_element(:id, "r2d2").click
	puts "R2D2 checkbox is checked"
else
	puts "R2D2 checkbox is not displayed"
end

sleep 3

# enter text in happiness text box:
if driver.find_element(:id, "happiness").displayed?
	driver.find_element(:id, "happiness").send_keys "100"
	puts "100 is entered in happiness input text box"
else
	puts "Happiness input text box is not displayed"
end

sleep 3

# click upload button:
if driver.find_element(:class, "upload").displayed?
	driver.find_element(:class, "upload").click
	puts "Upload button is clicked"
else
	puts "Upload button is not displayed"
end

sleep 3

# click on anchor tag link:
if driver.find_element(:link_text, "Okay Google").displayed?
	driver.find_element(:link_text, "Okay Google").click
	puts "Okay Google link is clicked"
else
	puts "Okay Google link is not displayed"
end




