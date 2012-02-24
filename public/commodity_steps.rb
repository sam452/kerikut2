Given /^a commodity "([^"]*)" exists$/ do |name|
  Commodity.create!(name: name)
end

Then /^I should go to the corn price page$/ do
  current_path.should == commodity_path(Commodity.find_by_name('Corn'))
end