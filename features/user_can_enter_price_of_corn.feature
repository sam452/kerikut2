Feature: I want to be able to enter in the market price of corn so they can be seen
		 by other farmers to make decisions about when to sell.


Scenario: Adding corn price
  Given a commodity "Corn" exists
	When I go to the new Price page
	Then I should see "gallon" in Retail Unit
	And I should see "crate" in Farm Gate Unit
	And I should see "bushel" in Delivered Unit
	And I should see "ton" in Wholesale Unit
	
	When I select "Corn" from "Commodity"
	
	And I select "good" in Quality
	And I select "government" in Price Type	
	
	And I fill in "12" in Farm Gate High
	And I fill in "10" in Farm Gate Low

	And I fill in "9" in Delivered High
	And I fill in "7" in Delivered Low

	And I fill in "14" in Wholesale High
	And I fill in "13" in Wholesale Low

	And I fill in "19" in Retail High
	And I fill in "17" in Retail Low
	
	And I put in today's date in Date
	
	When I press "Submit"
	Then it should create a new price in the database