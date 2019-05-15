def run_tests(deviceName, platformName, platformVersion, port, app)
  system("deviceName=\"#{deviceName}\" platformName=\"#{platformName}\" platformVersion=\"#{platformVersion}\" app=\"#{app}\" port=\"#{port}\" parallel_cucumber features -n 20")
end

task :Pixel_2_API_26 do
  run_tests('Pixel 2 API 26', 'Android', '8.0', 4723, 'app/appiumproject.apk')
end

task :Pixel_2_API_27 do
  run_tests('Pixel 2 API 27', 'Android', '8.1', 4724, 'app/appiumproject.apk')
end

multitask :test_sauce => [
    :Pixel_2_API_26,
    :Pixel_2_API_27
  ] do
  puts 'Running automation'
end
