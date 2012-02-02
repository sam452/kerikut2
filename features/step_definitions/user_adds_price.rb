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

When /^I select "([^"]*)" in Price Type$/ do |text|
  select(text, :from => 'Price Type')
end

When /^I fill in "([^"]*)" in Farm Gate High$/ do |text|
  fill_in('Farm gate high', :with => text)
end

When /^I fill in "([^"]*)" in Farm Gate Low$/ do |text|
  fill_in('Farm gate low', :with => text)
end

When /^I fill in "([^"]*)" in Delivered High$/ do |text|
  fill_in('Delivered high', :with => text)
end

When /^I fill in "([^"]*)" in Delivered Low$/ do |text|
  fill_in('Delivered low', :with => text)
end

When /^I fill in "([^"]*)" in Wholesale High$/ do |text|
  fill_in('Wholesale high', :with => text)
end

When /^I fill in "([^"]*)" in Wholesale Low$/ do |text|
  fill_in('Wholesale low', :with => text)
end

When /^I fill in "([^"]*)" in Retail High$/ do |text|
  fill_in('Retail high', :with => text)
end

When /^I fill in "([^"]*)" in Retail Low$/ do |text|
  fill_in('Retail low', :with => text)
end

When /^I put in today's date in Date$/ do
  fill_in('Date', :with => '1/01/12')
end

When /^I press "([^"]*)"$/ do |text|
  click_on('Create Price')
end

Then /^it should create a new price in the database$/ do
  commodity = Commodity.find_by_name("corn")
Price.where(quality: "good", commodity: "corn", date: Date.today, price_type: "government", farm_gate_unit: "crate", farm_gate_high: 12, farm_gate_low: 10, delivered_unit: "bushel", delivered_high: 9, delivered_low: 7, wholesale_unit: "ton", wholesale_high: 14, wholesale_low: 13, retail_unit: "gallon", retail_high: 19, retail_low: 17).size.should == 1
end

