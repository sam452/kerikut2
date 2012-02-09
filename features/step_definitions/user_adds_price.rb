# sguggested Given /^a commodity "([^"]*)" exists with wholesale_units: "([^"]*)", retail_units: "([^"]*)", farm_gate_units: "([^"]*)", delivered_units: "([^"]*)"$/ do |arg1, arg2, arg3, arg4, arg5|
#Given /^a commodity "([^"]*)" exists with wholesale_unit: "([^"]*)", retail_unit: "([^"]*)", farm_gate_unit: "([^"]*)", delivered_unit: "([^"]*)"$/ do |text, wholesale_unit, retail_unit, farm_gate_unit, delivered_unit|
Given /^a commodity "([^"]*)" exists with wholesale_units: "([^"]*)", retail_units: "([^"]*)", farm_gate_units: "([^"]*)", delivered_units: "([^"]*)"$/ do |text, wholesale_unit, retail_unit, farm_gate_unit, delivered_unit|
  #Factory(:commodity, :name => text, :wholesale_unit => wholesale_unit, :retail_unit => retail_unit)
  Commodity.create!(:name => text, :wholesale_unit => wholesale_unit, :retail_unit => retail_unit, :farm_gate_unit => farm_gate_unit, :delivered_unit => delivered_unit)
end



When /^I go to the new price commodities page$/ do
  visit('/prices/new/:commodity')
end

When /^I follow "([^"]*)"$/ do |text|
  
  click_link(text)
end


Then /^I should go to the new price page$/ do
  visit('/prices/new')
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

When /^I select "([^"]*)" in Quality$/ do |text|
  #select(text, :from => 'Quality')
  fill_in('Quality', :with => text)
end

When /^I select "([^"]*)" in Price Type$/ do |text|
  # select(text, :from => 'Price Type')
  fill_in('Price type', :with => text)
end


When /^I fill in "([^"]*)" in Farm Gate High \(crate\)$/ do |text|
  fill_in('Farm gate high', :with => text)
end

When /^I fill in "([^"]*)" in Farm Gate Low \(crate\)$/ do |text|
  fill_in('Farm gate low', :with => text)
end

When /^I fill in "([^"]*)" in Delivered High \(bushel\)$/ do |text|
  fill_in('Delivered high', :with => text)
end

When /^I fill in "([^"]*)" in Delivered Low \(bushel\)$/ do |text|
  fill_in('Delivered low', :with => text)
end

When /^I fill in "([^"]*)" in Wholesale High \(ton\)$/ do |text|
  fill_in('Wholesale high', :with => text)
end

When /^I fill in "([^"]*)" in Wholesale Low \(ton\)$/ do |text|
  fill_in('Wholesale low', :with => text)
end

When /^I fill in "([^"]*)" in Retail High \(gallon\)$/ do |text|
  fill_in('Retail high', :with => text)
end

When /^I fill in "([^"]*)" in Retail Low \(gallon\)$/ do |text|
  fill_in('Retail low', :with => text)
end

When /^I put in today's date in Date$/ do
  fill_in('Date', :with => Date.today)
end

When /^I press "([^"]*)"$/ do |text|
  click_on('Create Price')
end

Then /^it should create a new price in the database$/ do
  commodity = Commodity.find_by_name("Corn")
  price = Price.last
  price.quality.should=="good"
  price.date.should==Date.today
  price.price_type.should=="government"
  price.farm_gate_high.to_i.should==12
  price.farm_gate_low.to_i.should==10
  price.delivered_high.to_i.should==9
  price.delivered_low.to_i.should==7
  price.wholesale_high.to_i.should==14
  price.wholesale_low.to_i.should==13
  price.retail_high.to_i.should==19
  price.retail_low.to_i.should==17
  price.commodity.should == commodity
end

