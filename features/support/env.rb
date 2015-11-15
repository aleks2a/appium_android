require 'cucumber'
require 'appium_lib'
require 'rspec'
require 'pry'

APP_PATH = ENV['APP'] ||  File.join(File.dirname(__FILE__), "..", "..", "app-alpha-debug.apk")
DEFAULT_TIMEOUT = 20


class AppiumWorld
end

# adb shell "dumpsys window windows | grep -E 'mCurrentFocus|mFocusedApp'"

def caps
  { caps:       { deviceName: (ENV['DEVICE'] || "Nexus 4"),
                  platformName: 'Android',
                  app: APP_PATH,
                  appPackage: 'org.wikipedia.alpha',
                  appActivity: 'org.wikipedia.page.PageActivity',
                  newCommandTimeout: '3600'},
    appium_lib: { wait: DEFAULT_TIMEOUT,
                  debug: false } }
end

Appium::Driver.new(caps)
Appium.promote_appium_methods AppiumWorld


World do
  AppiumWorld.new
end














