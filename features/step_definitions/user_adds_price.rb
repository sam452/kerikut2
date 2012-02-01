When /^I go to the new Price page$/ do
  #visit new_prices_path
  visit('/prices/new')
end

Then /^I should see "([^"]*)" in Retail Unit$/ do |text|
  page.should have_content(text)
end

Then /^I should see "([^"]*)" in Farm Gate Unit$/ do |text|
  page.should have_content(text)
end

Then /^I should see "([^"]*)" in Delivered Unit$/ do |text|
  page.should have_content(text)
end

Then /^I should see "([^"]*)" in Wholesale Unit$/ do |text|
  page.should have_content(text)
end

When /^I select "([^"]*)" in Commodity$/ do |text|
  select(text, :from => 'Commodity')
end

When /^I select "([^"]*)" in Quality$/ do |text|
  select(text, :from => 'Quality')
end

When /^I select "([^"]*)" in Type$/ do |text|
  select(text, :from => 'Type')
end

When /^I fill in "([^"]*)" in Farm Gate High$/ do |text|
  fill_in('Farm Gate High', :with => text)
end

When /^I fill in "([^"]*)" in Farm Gate Low$/ do |text|
  fill_in('Farm Gate Low', :with => text)
end

When /^I fill in "([^"]*)" in Delivered High$/ do |text|
  fill_in('Delivered High', :with => text)
end

When /^I fill in "([^"]*)" in Delivered Low$/ do |text|
  fill_in('Delivered Low', :with => text)
end

When /^I fill in "([^"]*)" in Wholesale High$/ do |text|
  fill_in('Wholesale High', :with => text)
end

When /^I fill in "([^"]*)" in Wholesale Low$/ do |text|
  fill_in('Wholesale Low', :with => text)
end

When /^I fill in "([^"]*)" in Retail High$/ do |text|
  fill_in('Retail High', :with => text)
end

When /^I fill in "([^"]*)" in Retail Low$/ do |text|
  fill_in('Retail Low', :with => text)
end

When /^I put in today's date in Date$/ do
  fill_in('Date', :with => '1/01/12')
end

When /^I press "([^"]*)"$/ do |text|
  click_on('Submit')
end

