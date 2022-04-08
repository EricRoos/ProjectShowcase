Feature: Show the list of bank transactions
  @javascript
  Scenario: Logging in
    Given a "user" exists
    And the "user" has the attribute "email" with value of "foo@bar.com"
    And the "user" has the attribute "password" with value of "test123456"
    And the user is on the "sign in" page
    When the user fills in "Email" with "foo@bar.com"
    And the user fills in "Password" with "test123456"
    And the user clicks on "Log in"
    Then the user should see "Signed in successfully"