When(/^I swipe screen to the (right|left) direction$/) do |direction|
  sleep 1
  screen_actions.swipe_to_direction direction
  sleep 1
end

Then(/^I should( not)? see Navigation menu$/) do |option|
  if option == nil
   expect(navigation_menu_screen.navigation_menu_exists?).to be == true
  elsif option == " not"
   expect(navigation_menu_screen.navigation_menu_exists?).to be == false
  end
end

Then(/^I turn Airplane mode (on|off)$/) do |value|
  screen_actions.turn_airplane_mode value
end


Then(/^I should see internet connection error$/) do
  expect(login_screen.connection_error.text).to be == "Cannot connect to the Internet."
end


Then(/^I scroll to "([^"]*)"$/) do |text|
  screen_actions.scroll_to text
end

Then(/^I tap on "([^"]*)"$/) do |text|
  article_screen.wait_for_flt_button_disappear 5
  screen_actions.tap_on_first_element text
end