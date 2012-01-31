When /^I go to the new Price page$/ do
  #visit new_prices_path
  visit('/prices/new')
end

Then /^I should see "([^"]*)" in Retail Unit$/ do |text|
  page.should have_content(text)
end

