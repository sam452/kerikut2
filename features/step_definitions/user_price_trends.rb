Then /^I go to the commodity trend page$/ do
  visit(commodity_path(Commodity.last))
end

Then /^I should go to the commodity prices page$/ do
  visit('commodities/index')
end