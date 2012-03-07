#Given /^the following (\d+) records?:$/ do |price, table|
 # table.hashes.each do |hash|
  #  corn = Factory(:commodity)
  #  Price.create!(commodity: corn, quality: "good", price_type: "government", farm_gate_high: "12", farm_gate_low: "10", delivered_high: "9", delivered_low: "7", wholesale_high: "14", wholesale_low: "13", retail_high: "19", retail_low: "17", date: "01/01/1990")
    #Factory(:price, hash)
 # end
#end

Given /^there are prices entered$/ do 
  #FactoryGirl.create_list(:price, 2, commodity: Factory(:commodity))
  #commodity = Factory(:commodity) 
  #2.times { Factory(:price, commodity: commodity)}
  corn = Commodity.create!(name: "Corn", wholesale_unit: "ton", retail_unit: "gallon",  farm_gate_unit: "crate", delivered_unit: "bushel")
  Price.create!(commodity: corn, quality: "good", price_type: "government", farm_gate_high: "12", farm_gate_low: "10", delivered_high: "9", delivered_low: "7", wholesale_high: "14", wholesale_low: "13", retail_high: "19", retail_low: "17", date: "01/01/1990")
  Price.create!(commodity: corn, quality: "good", price_type: "government", farm_gate_high: "13", farm_gate_low: "11", delivered_high: "10", delivered_low: "8", wholesale_high: "15", wholesale_low: "14", retail_high: "20", retail_low: "18", date: "01/02/1990")
  Price.create!(commodity: corn, quality: "good", price_type: "government", farm_gate_high: "14", farm_gate_low: "12", delivered_high: "11", delivered_low: "9", wholesale_high: "16", wholesale_low: "15", retail_high: "21", retail_low: "19", date: "01/03/1990")
  Price.create!(commodity: corn, quality: "good", price_type: "government", farm_gate_high: "15", farm_gate_low: "13", delivered_high: "12", delivered_low: "10", wholesale_high: "17", wholesale_low: "16", retail_high: "22", retail_low: "20", date: "01/04/1990")
end


#->{ binding.pry }.call
# save_and_open_page

