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
	And I should see "101" in Farm gate low (crate)
	And I should see "91" in Delivered high (bushel)
	And I should see "71" in Delievered low (bushel)
	And I should see "141" in Wholesale high (ton)
	And I should see "131" in Wholesale low (ton)
	And I should see "191" in Retail high (gallon)
	And I should see "171" in Retail low (gallon)
	And I should see "01/01/1990" in Date
	
   	And I should see "good" in "price_quality"
	And I should see "government" in Price Type
	
	And I should see "122" in Farm gate high (crate)
	And I should see "102" in Farm gate low (crate)
	And I should see "92" in Delivered high (bushel)
	And I should see "72" in Delievered low (bushel)
	And I should see "142" in Wholesale high (ton)
	And I should see "132" in Wholesale low (ton)
	And I should see "192" in Retail high (gallon)
	And I should see "172" in Retail low (gallon)
	And I should see "01/02/1990" in Date
	