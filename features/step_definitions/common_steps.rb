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