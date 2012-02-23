require 'factory_girl'

FactoryGirl.define do
  
  factory :commodity do |f|
    f.name 'Corn'
    f.wholesale_unit 'ton'
    f.retail_unit 'gallon'
    f.farm_gate_unit 'crate'
    f.delivered_unit 'bushel'
    f.receipt_unit 'dollar'
  end
  
  factory :price do |f|
    f.quality 'good'
    f.price_type 'government'
    f.farm_gate_high '12'
    f.farm_gate_low '10'
    f.delivered_high '9'
    f.delivered_low '7'
    f.wholesale_high '14'
    f.wholesale_low '13'
    f.retail_high '19'
    f.retail_low '17'
    f.date '01/01/1990'
  end
  
end	

  