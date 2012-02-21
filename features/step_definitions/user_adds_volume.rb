Given /^this commodity "([^"]*)" exists with wholesale_units: "([^"]*)", retail_units: "([^"]*)", farm_gate_units: "([^"]*)", delivered_units: "([^"]*)"$/ do |text, wholesale_unit, retail_unit, farm_gate_unit, delivered_unit|
  Factory(:commodity, :name => text, :wholesale_unit => wholesale_unit, :retail_unit => retail_unit)
  #Commodity.create!(:name => text, :wholesale_unit => wholesale_unit, :retail_unit => retail_unit, :farm_gate_unit => farm_gate_unit, :delivered_unit => delivered_unit)
end



When /^I go to the new volume commodities page$/ do
  visit('/volumes/new')
end

