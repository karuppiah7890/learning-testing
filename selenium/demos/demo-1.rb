require 'selenium-webdriver'

# driver = Selenium::WebDriver.for :chrome
# driver = Selenium::WebDriver.for :firefox

driver = Selenium::WebDriver.for :remote, url: "http://localhost:4444", desired_capabilities: :firefox

wait = Selenium::WebDriver::Wait.new(timeout: 10)

begin
  driver.get 'https://www.google.com/ncr'
  driver.find_element(name: 'q').send_keys 'cheese', :return
  first_result = wait.until { driver.find_element(css: 'h3>div') }
  puts first_result.attribute('textContent')
ensure
  driver.quit
end

