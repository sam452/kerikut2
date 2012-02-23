Given /^this commodity "([^"]*)" exists with wholesale_units: "([^"]*)", retail_units: "([^"]*)", farm_gate_units: "([^"]*)", delivered_units: "([^"]*)", receipt_units: "([^"]*)"$/ do |text, wholesale_unit, retail_unit, farm_gate_unit, delivered_unit, receipt_unit|
  Factory(:commodity)
end


When /^I go to the new volume commodities page$/ do
  #->{ binding.pry }.call
  visit('/volumes/new')
end

When /^I fill in  "([^"]*)" in "([^"]*)"$/ do |text, field|
  fill_in(field, :with => text)
end