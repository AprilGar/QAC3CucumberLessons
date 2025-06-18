Feature: Scenario Outline Feature

  Background:
    Given the user is on the login page

#    Scenario outline will run through each row of the examples table
  Scenario Outline: Login with invalid credentials
#    The values that will be substituted for the values in the examples table should be wrapped in "<>"
    When the user enters "<username>" and "<password>"
    And the user clicks the login button
    Then the user should be logged in successfully

    Examples:
    | username | password |
    | april | 123456 |
    | chay | 345@345 |
    | mercator | 76543 |
    | mercator | |
#    empty value will be accepted as a null value exception