Feature: I want to be able to find what the prices for corn has been for a certain date so 
I can make intelligent decisions about selling my corn.


Scenario: Viewing corn prices

  Given a price for corn has already been entered
	
	When I go to the home page
	
	Then I should see "Corn"
	And I click on "Corn"
	
	Then I should go to the corn price page
	  
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
	And I should not see "14" in Retail low (gallon)

