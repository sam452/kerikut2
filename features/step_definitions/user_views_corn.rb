Given /^a price for corn has already been entered$/ do
	#corn = Commodity.create!(name: "Corn", wholesale_unit: "ton", retail_unit: "gallon",  farm_gate_unit: "crate", delivered_unit: "bushel")
 	#Price.create!(commodity: corn, quality: "good", price_type: "government", farm_gate_high: "12", farm_gate_low: "10", delivered_high: "9", delivered_low: "7", wholesale_high: "14", wholesale_low: "13", retail_high: "19", retail_low: "17", date: "01/01/1990")
 	corn = Factory(:commodity)
 	Factory(:price)
end

When /^I go to the home\s?page$/ do
 visit("/")
 save_and_open_page
end


