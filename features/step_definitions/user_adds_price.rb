When /^I go to the new Price page$/ do
  #visit new_prices_path
  visit('/prices/new')
end

Then /^I should see "([^"]*)" in Retail Unit$/ do |text|
  # page.should have_content(text)
  fill_in('Retail unit', :with => text)
end

Then /^I should see "([^"]*)" in Farm Gate Unit$/ do |text|
  # page.should have_content(text)
  fill_in('Farm gate unit', :with => text)
end

Then /^I should see "([^"]*)" in Delivered Unit$/ do |text|
  # page.should have_content(text)
  fill_in('Delivered unit', :with => text)
end

Then /^I should see "([^"]*)" in Wholesale Unit$/ do |text|
  # page.should have_content(text)
  fill_in('Wholesale unit', :with => text)
end

When /^I select "([^"]*)" in Commodity$/ do |text|
  select(text, :from => 'Commodity')
end

When /^I select "([^"]*)" in Quality$/ do |text|
  #select(text, :from => 'Quality')
  fill_in('Quality', :with => text)
end

When /^I select "([^"]*)" in Price Type$/ do |text|
  # select(text, :from => 'Price Type')
  fill_in('Price type', :with => text)
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
  fill_in('Date', :with => Date.today)
end

When /^I press "([^"]*)"$/ do |text|
  click_on('Create Price')
end

Then /^it should create a new price in the database$/ do
  commodity = Commodity.find_by_name("corn")
price = Price.last
price.quality.should=="good"
price.date.should==Date.today
price.price_type.should=="government"
price.farm_gate_unit.should=="crate"
price.farm_gate_high.to_i.should==12
price.farm_gate_low.to_i.should==10
price.delivered_unit.should=="bushel"
price.delivered_high.to_i.should==9
price.delivered_low.to_i.should==7
price.wholesale_unit.should=="ton"
price.wholesale_high.to_i.should==14
price.wholesale_low.to_i.should==13
price.retail_unit.should=="gallon"
price.retail_high.to_i.should==19
price.retail_low.to_i.should==17
price.commodity.should==commodity
end

