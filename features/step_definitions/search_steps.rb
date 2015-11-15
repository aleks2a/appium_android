Given(/^I land on Today's featured article$/) do
  find_element(id: "main_search_bar_text")
end

When(/^I click on Search textfield$/) do
  find_element(id: "main_search_bar_text").click
end

Then(/^I type "([^"]*)" into search field$/) do |search_term|
  find_element(id: "search_src_text").send_keys search_term
end

When(/^I tap on (\d+) search result on search result screen$/) do |index|
  elements = find_elements(id: "page_list_item_container")
  elements[index.to_i - 1].click
end

And(/^I verify that article contains "([^"]*)"$/) do |article_name|
  result = find_element(id: "page_title_text").text
  expect(result).to include article_name

end

Then(/^I see that (\d+) search result include "([^"]*)"$/) do |index, search_term|
  elements = find_elements(id: "page_list_item_title")
  result = elements[index.to_i - 1].text
  expect(result).to include search_term
  # expect(find_elements(id: "page_list_item_title")[index.to_i - 1].text).to include search_term
end














