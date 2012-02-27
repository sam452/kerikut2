Given /^this commodity "([^"]*)" exists with wholesale_units: "([^"]*)", retail_units: "([^"]*)", farm_gate_units: "([^"]*)", delivered_units: "([^"]*)", receipt_units: "([^"]*)"$/ do |text, wholesale_unit, retail_unit, farm_gate_unit, delivered_unit, receipt_unit|
  Factory(:commodity)
end


When /^I go to the new volume commodities page$/ do
  #->{ binding.pry }.call
  visit('/volumes/new')
end


Then /^I fill in "([^"]*)" in volume_region$/ do |text|
  fill_in('volume_region', :with => text)
end

Then /^I fill in "([^"]*)" in volume_district$/ do |text|
  fill_in('volume_district', :with => text)
end

Then /^I fill in "([^"]*)" in volume_quality$/ do |text|
  fill_in('volume_volume_quality', :with => text)
end

Then /^I fill in "([^"]*)" in "([^"]*)"$/ do |text, field|
  fill_in(field, :with => text)
end

