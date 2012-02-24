Then /^I should see "([^"]*)"/ do |text|
  page.should have_content(text)
end

Then /^I click on "([^"]*)"$/ do |text|
  find_link(text).click
end
