require 'appium_lib'
require 'rubygems'
require 'byebug'

#before and after Cucumber hooks
Before do
  caps = {}
  caps["platformName"] = "Android"
  caps["app"] = "/Users/enriquesanchez/workspace/personal/curso_appium/app/appiumproject.apk"
  caps["deviceName"] = "emulator-5554"
  caps["platformVersion"] = "8.0"
  opts = {
      sauce_username: nil,
      server_url: "http://127.0.0.1:4723/wd/hub"
  }

  @driver = Appium::Driver.new({caps: caps, appium_lib: opts}, true)
  @driver.start_driver
end

After do
  @driver.driver_quit
end