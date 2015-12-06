Given(/^I land on Today's featured article$/) do
  article_screen.search_bar
end


When(/^I click on Search textfield$/) do
  article_screen.search_bar.click
end


Then(/^I type "([^"]*)" into search field$/) do |search_term|
  article_screen.search_text_field.send_keys search_term
end


When(/^I tap on (\d+) search result on search result screen$/) do |index|
  elements = search_result_screen.search_results
  elements[index.to_i - 1].click
end


And(/^I verify that article contains "([^"]*)"$/) do |article_name|
  result = search_result_screen.search_result_title.text
  expect(result).to include article_name
end


Then(/^I see that (\d+) search result include "([^"]*)"$/) do |index, search_term|
  elements = article_screen.article_title
  result = elements[index.to_i - 1].text
  expect(result).to include search_term
  # expect(find_elements(id: "page_list_item_title")[index.to_i - 1].text).to include search_term
end


