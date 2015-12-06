Then(/^I press Navigation menu icon$/) do
  article_screen.navigation_menu_icon.click
end


Then(/^I press on Log in to Wikipedia$/) do
  navigation_menu_screen.account_text.click
end


And(/^I land on Login screen$/) do
  result = login_screen.username_field.displayed?
  expect(result).to be == true
  # expect(login_screen.username_field.displayed?).to be == true
end


Then(/^I type "([^"]*)" to login field$/) do |user_name|
  login_screen.username_field.send_keys user_name
end


Then(/^I type "([^"]*)" to password field$/) do |password|
  login_screen.password_field.send_keys password
end


And(/^I press on Log in button$/) do
  login_screen.login_button.click
end


