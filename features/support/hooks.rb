Before do
  $driver.start_driver
  #driver.set_network_connection 6
end

After do |scenario|
  if scenario.failed?

    unless File.directory?("screenshots")
      FileUtils.mkdir_p("screenshots")
    end

    time_stamp = Time.now.strftime("%Y-%m-%d_at_%H.%M.%S").to_s
    screenshot_name = "#{time_stamp}_failure_#{scenario.name.gsub(/[^\w`~!@#\$%&\(\)_\-\+=\[\]\{\};:',]/, '-')}.png"
    screenshot_file = File.join("screenshots", screenshot_name)
    $driver.screenshot(screenshot_file)
    embed("screenshots/#{screenshot_name}", 'image/png')
  end
  $driver.driver_quit
end


AfterConfiguration do
  FileUtils.rm_r("screenshots") if File.directory?("screenshots")
end








