Feature: I want to be able to enter in how much corn comes in to be sold and from where it omes
		 so they can be seen
		 by other farmers to make decisions about when to sell.


Scenario: Adding corn volume

  Given this commodity "Corn" exists with wholesale_units: "ton", retail_units: "gallon", farm_gate_units: "crate", delivered_units: "bushel", receipt_units: "dollar"
	
	When I go to the new volume commodities page
	
	And I follow "Corn"

	And I fill in "poor" with "volume_quality"
	And I fill in  "private" in "volume_type"
	
	And I fill in "North" in "region"
	And I fill in "myDistrict" in "district"

	And I fill in "myWard" in "ward"
	And I fill in "myTown" in "town"

	And I fill in "dollar" in "receipt_unit"
	
	And I put in today's date in Date
	
	When I press "Submit"
	Then it should create a new volume in the database