require 'factory_girl'

FactoryGirl.define do
  
  factory :commodity do
    name 'Corn'
    wholesale_unit 'ton'
    retail_unit 'gallon'
    farm_gate_unit 'crate'
    delivered_unit 'bushel'
    receipt_unit 'dollar'
  end
  
  factory :price do 
    sequence(:quality) { |n| 'good#{n}' }
    price_type 'government'
    farm_gate_high { Random.new.rand(10..40) } 
    farm_gate_low { farm_gate_high - 10 }
    sequence(:delivered_high) { |n| '9#{n}' }
    sequence(:delivered_low) { |n| '7#{n}' }
    sequence(:wholesale_high) { |n| '14#{n}' }
    sequence(:wholesale_low) { |n| '13#{n}' }
    sequence(:retail_high) { Random.new.rand(10..50) }
    sequence(:retail_low) { |n| '17#{n}'.to_i }
    #sequence(:date) { |n| '01/0#{n}/1990' }
    sequence(:date) {'01/0{Random.new.rand(1..29)}/1990' }
    commodity
  end
  
end	

  