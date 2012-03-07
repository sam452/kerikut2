Then /^I go to the commodity trend page$/ do
  visit(commodity_path)
end

Then /^I should go to the commodity index page$/ do
  visit('commodities/index')
end