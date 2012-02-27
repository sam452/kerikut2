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

When /^I click "([^"]*)"$/ do |text|
  click_button(text)
end

Then /^it should create a new volume in the database$/ do
  commodity = Commodity.find_by_name("Corn")
  volume = Volume.last
  volume.volume_quality.should=="poor"
  volume.date.should==Date.today
  volume.volume_type.should=="private"
  volume.region.should=="North"
  volume.district.should=="myDistrict"
  volume.ward.should=="myWard"
  volume.town.should=="myTown"
  volume.commodity.should == commodity
end

