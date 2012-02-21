Given /^a price for corn has already been entered$/ do
	corn = Commodity.create!(name: "Corn", wholesale_unit: "ton", retail_unit: "gallon",  farm_gate_unit: "crate", delivered_unit: "bushel")
 	Price.create!(commodity: corn, quality: "good", price_type: "government", farm_gate_high: "12", farm_gate_low: "10", delivered_high: "9", delivered_low: "7", wholesale_high: "14", wholesale_low: "13", retail_high: "19", retail_low: "17", date: "01/01/1990")
 	#corn = Factory(:user)
 	#Factory(:price)
end

When /^I go to the home\s?page$/ do
 visit("/")
end

#  	Then /^I should see "([^"]*)"$/ do |text|
#   	  page.has_content?(text)
#   	   save_and_open_page
#   	end
#   	
#   	Then /^I click on "([^"]*)"$/ do |text|
#   	  click_link(text)
#   	 end
#   	 
#   	 Then /^I should go to the price page$/ do
#   	   #visit(price_commodities_show_path)
#   	   visit(price_path)
#   	end
#  
#  	Then /^I should see "([^"]*)" in "([^"]*)"$/ do |text, field|
#   	  pending # express the regexp above with the code you wish you had
#  	end