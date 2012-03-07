@focus
Feature: As a user, I want to see all prices for corn so that I can see the trend and
   and make intelligent decisions on when to sell.
   
Scenario: Seeing all corn prices
   
   Given there are prices entered
   
   When I go to the home page
   
   Then I should see "Corn"
   And I click on "Corn"
   
   Then I should go to the corn price page
   Then show
   	And I should see "good" in "price_quality"
	And I should see "government" in Price Type
	
	And I should see "12" in Farm gate high (crate)
	And I should see "10" in Farm gate low (crate)
	And I should see "9" in Delivered high (bushel)
	And I should see "7" in Delievered low (bushel)
	And I should see "14" in Wholesale high (ton)
	And I should see "13" in Wholesale low (ton)
	And I should see "19" in Retail high (gallon)
	And I should see "17" in Retail low (gallon)
	And I should see "1990-01-01" in Date
	
   	And I should see "good" in "price_quality"
	And I should see "government" in Price Type
	
	And I should see "13" in Farm gate high (crate)
	And I should see "11" in Farm gate low (crate)
	And I should see "10" in Delivered high (bushel)
	And I should see "8" in Delievered low (bushel)
	And I should see "15" in Wholesale high (ton)
	And I should see "14" in Wholesale low (ton)
	And I should see "20" in Retail high (gallon)
	And I should see "18" in Retail low (gallon)
	And I should see "1990-02-01" in Date
	
