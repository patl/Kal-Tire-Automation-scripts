Feature: Check the create account functionality

  Background:
    Given open the site
    When user press on 'Log in' from header
    Then he navigates to 'Log in'page
    Then user press on create account button
    When  user is on Create account page

  Scenario: Navigate to crate account form
    Then user fills the First name with correct data
    Then user fills the Last name with correct data
    Then user fills the Email with correct data
    Then user fills the Password1 with valid data
    Then user fills the Password2 with valid data
    And press on 'Create account' button on create acc page
    When user navigates to My account LP
    Then press on Log Out
    And close the browser

  Scenario: Check validations for fields
    #check validation for blank fields
    Then press on 'Create account' button on create acc page
    And Verify validation messaged for each fields should be
    And close the browser

  Scenario:
    #check validation for special symbols in First and last name
    Then Type first name with incorrect values like: @#$%^&
    Then Type last name with incorrect values like: @#$%^&
    And user fills the Email with correct data
    And user fills the Password1 with valid data
    And user fills the Password2 with valid data
    And press on 'Create account' button on create acc page
    And Verify validation message for First name should be: First name must only contain letters, periods, dashes, underscores and plus sign.
    And Verify validation message for Last name should be: Last name must only contain letters, periods, dashes, underscores and plus sign.


    #check the validations for First and last name with 1 and 2 symbols
    Then User Fills  the First name with one symbol
    Then User Fills  the Last name with two symbol
    And press on 'Create account' button on create acc page
    And verify the validations for First name: Please your first name must be between "2-25" characters.
    And Verify the validations for Last name: Please your last name must be between "2-25" characters.

    #check the validaiton for First and Last names with 25 and 26 symbols
    Then User Fills the First name with 25 symbols
    Then User Fills the Last name with 26 symbols
    And press on 'Create account' button on create acc page

    #Email incorrect
    Then user fills the First name with correct data
    Then user fills the Last name with correct data
    Then entered incorrect email  like ogboiko@
    And press on 'Create account' button on create acc page
    And verify the validation message for  email filed: Please enter a valid email address

    #alredy registered email
    Then user fills the Email that is registered in the system like: ogboiko@gmail.com
    And press on 'Create account' button on create acc page
    Then verify the validation message for Email:  An account already exists for this email address; please sign in

    #password 1 less then 7
    Then fill the password1 with incorrect data like: 123456
    And press on 'Create account' button on create acc page
    And verify the validation message: Please enter a password between 7-20 characters.

    #password 2 less then 7
    Then fill the password2 with data like: 123456
    And press on 'Create account' button on create acc page
    And verify the valdiaiton message for password 2: Please enter a password between 7-20 characters.

    #password 1 more then 20
    Then fill the password1 with incorrect data like: 25
    And press on 'Create account' button on create acc page
    And verify the validation message: Please enter a password between 7-20 characters.

    #password 2 more then 20
    Then fill the password2 with data like: 25
    And press on 'Create account' button on create acc page
    And verify the valdiaiton message for password 2: Please enter a password between 7-20 characters.

   #password 1 != password 2
   Then fill password 1 with correct data like: 1234567
   And user fills the Password2 with valid data
    And press on 'Create account' button on create acc page
   And verify that password 2 has validaiton message: Passwords do not match.
And close the browser









