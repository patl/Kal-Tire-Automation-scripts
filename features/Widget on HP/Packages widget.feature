Feature: packages widget tests

  Background:
    Given open the site
    Then user presses on Packages tab from widget
    Then user presses on SHOP TIRE AND WHEEL PACKAGES BY VEHICLE
    Then select Year for tires by vehicle Packages
    Then select Make for tires by vehicle Packages
    Then select Model for tires by vehicle Packages

    #Then select Size for tires by vehicle Packages


        Scenario: user selects OEM size
        Then select Options for tires by vehicle Packages
        Then verify that packages page is displayed
        And verify searching car by Year and Make
        Then user selects OEM size for packages
        And verify that CLP is displayed for selected size SHOP WHEELS
        Then user press on the first product from the grid
        And verify that PDP is open
        When user changed location in header to Alberta
        Then he should see Add to cart button
        And press on Add to Cart button
        Then verify that Added to cart pop-up is displayed
        And press on Select different wheel link
        And verify that CLP is displayed for selected size SHOP WHEELS
        Then user press on the first product from the grid
        And verify that PDP is open
        And press on Add to Cart button
        And close the replace pop-up
        Then verify that Added to cart pop-up is displayed
        And user press on Shop for tires button
        And verify that CLP is displayed for selected size SHOP WHEELS
        And check that Edit link is appeared near the first step
        And verify that Step 2 became active Select Tire
        Then user press on the first product TIRE from the grid
        And press on Add to Cart button
        When tires product is added to cart verify that Your Cart is displayed
        Then close the browser








