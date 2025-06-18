Feature: Background Feature

  Background:
    Given the user is on the login page
#    use background keyword to remove duplicate

  Scenario: Successful login with valid credentials
    When the user enters valid user name and password
    And the user clicks the login button
    Then the user should be logged in successfully

  Scenario: Login with invalid credentials
    When the user enters invalid user name and password
    And the user clicks the login button
    Then the user should not be logged in successfully and recieves an error message
