require 'factory_girl'

FactoryGirl.define do
  
  factory :commodity do
    name 'Corn'
    wholesale_unit 'ton'
    #retail_unit 'gallon'
    #farm_gate_unit 'crate'
    #delivered_unit 'bushel'
    #receipt_unit 'dollar'
  end
  
  factory :price do 
    quality 'good'
    price_type 'government'
    sequence(:farm_gate_high) { |n| '12#{n}' }
    #sequence(:farm_gate_low) { |n| '10#{n}' }
    #sequence(:delivered_high) { |n| '9#{n}' }
    #sequence(:delivered_low) { |n| '7#{n}' }
    #sequence(:wholesale_high) { |n| '14#{n}' }
    #sequence(:wholesale_low) { |n| '13#{n}' }
    #sequence(:retail_high) { |n| '19#{n}' }
    #sequence(:retail_low) { |n| '17#{n}' }
    #sequence(:date) { |n| '01/0#{n}/1990' }
    commodity
  end
  
end	

  