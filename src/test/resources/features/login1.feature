Feature: Login Page

  Scenario: Successful login with valid credentials
    Given the user is on the login page
    When the user enters valid user name and password
    And the user clicks the login button
    Then the user should be logged in successfully

  Scenario: Login with invalid credentials
    Given the user is on the login page
    When the user enters invalid user name and password
    And the user clicks the login button
    Then the user should not be logged in successfully and recieves an error message