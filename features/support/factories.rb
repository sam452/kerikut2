require 'factory_girl'

FactoryGirl.define do
  factory :commodity do |f|
    f.name 'Corn'
    f.wholesale_unit 'ton'
    f.retail_unit 'gallon'
    #f.farm_gate_unit 'crate'
    #f.delivered_unit 'bushel'
  end
end	