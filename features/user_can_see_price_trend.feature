@focus
Feature: As a user, I want to see the prices for corn so that I can see the trend and
   and make intelligent decisions on when to sell.
   
Scenario: Seeing the trend in corn prices
   
   Given there are prices entered
   
   When I go to the home page
   
   Then I should see "Corn"
   And I click on "Corn"
   
   Then I go to the commodity trend page
   Then show   
   And I should see "14" in Farm gate high (crate)
   And I should see "12" in Farm gate low (crate)
   And I should see "11" in Delivered high (bushel)
   And I should see "9" in Delievered low (bushel)
   And I should see "16" in Wholesale high (ton)
   And I should see "17" in Wholesale low (ton)
   And I should see "21" in Retail high (gallon)
   And I should see "19" in Retail low (gallon)
   
   Then I click on "Show all prices"
   Then I should go to the commodity prices page
   
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

   	And I should see "good" in "price_quality"
	And I should see "government" in Price Type
	
	And I should see "14" in Farm gate high (crate)
	And I should see "12" in Farm gate low (crate)
	And I should see "12" in Delivered high (bushel)
	And I should see "9" in Delievered low (bushel)
	And I should see "16" in Wholesale high (ton)
	And I should see "15" in Wholesale low (ton)
	And I should see "21" in Retail high (gallon)
	And I should see "19" in Retail low (gallon)
	And I should see "1990-03-01" in Date

   	And I should see "good" in "price_quality"
	And I should see "government" in Price Type
	
	And I should see "15" in Farm gate high (crate)
	And I should see "13" in Farm gate low (crate)
	And I should see "13" in Delivered high (bushel)
	And I should see "10" in Delievered low (bushel)
	And I should see "17" in Wholesale high (ton)
	And I should see "16" in Wholesale low (ton)
	And I should see "22" in Retail high (gallon)
	And I should see "20" in Retail low (gallon)
	And I should see "1990-04-01" in Date