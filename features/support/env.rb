require 'appium_lib'
require 'rubygems'
require 'byebug'

#before and after Cucumber hooks
Before do
  caps = {
    caps: {
      automationName: "Appium",
      platformVersion: "#{ENV['platformVersion']}",
      deviceName: "#{ENV['deviceName']}",
      platformName: "#{ENV['platformName']}",
      app: "#{ENV['app']}",
      deviceOrientation: 'portrait',
      name: "#{scenario.feature.name} - #{scenario.name}",
      appiumVersion: '1.13.0',
      browserName: ''
    }
  }
  opts = {
      sauce_username: nil,
      server_url: "http://127.0.0.1:#{ENV['port']}/wd/hub"
  }

  @driver = Appium::Driver.new({caps: caps, appium_lib: opts}, true)
  @driver.start_driver
end

After do
  @driver.driver_quit
end
