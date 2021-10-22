Feature: Verify numbers

  Scenario: Verify too small number error
    When I am on number page
    And I enter "12" in the field
    And I click submit button
    Then Error message is: "Number is too small"

  Scenario: Verify too big number error
    When  I am on number page
    When I enter "113" in the field
    And I click submit button
    Then Error message is: "Number is too big"

  Scenario: Verify text error
    When I am on number page
    And I enter "text" in the field
    And I click submit button
    Then Error message is: "Please enter a number"

  @debugs
  Scenario Outline: Verify errors
    When I am on number page
    And I enter "<number>" in the field
    And I click submit button
    Then Error message is: "<error>"
    Examples:
      | number | error |
      | 12 | Number is too small |
      | 113 | Number is too big |
      | text | Please enter a number |

  Scenario: Verify correct number
    When I am on number page
    And I enter "64" in the field
    And I click submit button
    Then Message is: "Square root of 64 is 8.00"
