Feature: I want to be able to enter in the market price of corn so they can be seen
		 by other farmers to make decisions about when to sell.


Scenario: Adding corn price

  Given a commodity "Corn" exists with wholesale_units: "ton", retail_units: "gallon", farm_gate_units: "crate", delivered_units: "bushel"
	
	When I go to the new price commodities page
	
	And I follow "Corn"
	
	Then I should go to the new price page
	
	Then I should see "ton"
	Then I should see "gallon"
	Then I should see "crate"
	Then I should see "bushel"
	
	And I select "good" in Quality
	And I select "government" in Price Type
	
	And I fill in "12" in Farm Gate High (crate)
	And I fill in "10" in Farm Gate Low (crate)

	And I fill in "9" in Delivered High (bushel)
	And I fill in "7" in Delivered Low (bushel)

	And I fill in "14" in Wholesale High (ton)
	And I fill in "13" in Wholesale Low (ton)

	And I fill in "19" in Retail High (gallon)
	And I fill in "17" in Retail Low (gallon)
	
	And I put in today's date in Date
	
	When I press "Submit"
	Then it should create a new price in the database