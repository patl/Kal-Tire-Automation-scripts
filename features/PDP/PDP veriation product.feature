Feature: PDP
  Background:
    Given open the site
    Then user presses on Search icon from header

    Scenario: PDP for variation product Tires
      When user types tires's id15333
      Then press on Enter/Search
      Then Verify that pdp Shop Tires is displayed
      And verify that searched ID is displayed for tires
      Then user changed location in header to Alberta
      Then change qnt to 2
      And press on Add to Cart button
           #And verify that qnt 2 is displayed on minicart
      Then press on All sizes link
      And verify that master product is displayed Sizes and Specs
      And press on Minicart
      And Verify that Cart page is displayed
      Then verify that added product is displayed on cart
      And close the browser



    Scenario: PDP for Variation products Wheels
      When user tupes wheel's idS577670148H5BHX
      Then press on Enter/Search
      Then Verify that pdp Shop Wheels is displayed
      And verify that searched ID is displayed for wheels
      Then change qnt to 2
      And press on Add to Cart button
      #And verify that qnt 2 is displayed on minicart
      Then press on All sizes link
      And verify that master product is displayed Sizes and Specs
      And press on Minicart
      And Verify that Cart page is displayed
      Then verify that added product is displayed on cart
      And close the browser

    Scenario: PDP Variation product and wheels product
      When user types tires's id15333
      Then press on Enter/Search


      When user types wheel's idS577670148H5BHX
      Then press on Enter/Search


    Scenario: PDP Master product for tires
      When user types the Tires in search field
      Then press on Enter/Search


    Scenario: PDP Variation produce for wheels
      When user types the Wheels in search field
      Then press on Enter/Search


