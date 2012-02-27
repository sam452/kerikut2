Feature: I want to be able to enter in how much corn comes in to be sold and from where it omes
		 so they can be seen
		 by other farmers to make decisions about when to sell.


Scenario: Adding corn volume

  Given this commodity "Corn" exists with wholesale_units: "ton", retail_units: "gallon", farm_gate_units: "crate", delivered_units: "bushel", receipt_units: "dollar"
	
	When I go to the new volume commodities page
	
	And I click on "Corn"
	
	And I fill in "North" in volume_region
	And I fill in "myDistrict" in volume_district

	Then I fill in "poor" in volume_quality
	And I fill in "private" in "volume_volume_type"
	
	And I fill in "myWard" in "volume_ward"
	And I fill in "myTown" in "volume_town"
	
	And I put in today's date in Date
	
	When I press "Submit"
	Then it should create a new volume in the database