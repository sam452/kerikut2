Given /^a commodity "([^"]*)" exists$/ do |name|
  Commodity.create!(name: name)
end