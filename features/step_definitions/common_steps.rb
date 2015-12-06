When(/^I swipe screen to the (right|left) direction$/) do |direction|
  screen_actions.swipe_to_direction direction
  sleep 1
end

Then(/^I should( not)? see Navigation menu$/) do |option|
  if option == nil
   puts navigation_menu_screen.navigation_menu_exists?
  elsif option == " not"
   puts navigation_menu_screen.navigation_menu_exists?
  end
end