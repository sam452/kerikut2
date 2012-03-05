@focus
Feature: As a user, I want to see all prices for corn so that I can see the trend and
   and make intelligent decisions on when to sell.
   
Scenario: Seeing all corn prices
   
   Given there are prices entered
   
   When I go to the home page
   
   Then I should see "Corn"
   And I click on "Corn"
   
   Then I should go to the corn price page
   
   	And I should see "good" in "price_quality"
	And I should see "government" in Price Type
	
	And I should see "121" in Farm gate high (crate)
	And I should see "10" in Farm gate low (crate)
	And I should see "9" in Delivered high (bushel)
	And I should see "7" in Delievered low (bushel)
	And I should see "14" in Wholesale high (ton)
	And I should see "13" in Wholesale low (ton)
	And I should see "19" in Retail high (gallon)
	And I should see "17" in Retail low (gallon)
	And I should see "01/01/1990" in Date