Feature: Persons

  Scenario: Actions with person
    When I go to the person page
    And I click on the Add person button
    And I enter name "John"
    And I enter surname "Don"
    And I enter job "Singer"
    And I enter Date of Birth "01/01/1995"
    And I choose language "spanish"
    And I choose gender "male"
    And I choose employee status "intern"
    And I click on the Add button
    And I click Edit button
    And I enter job "Actor"
    And I click on the Add button
    And  I Click Delete button
    Then I Click Reset list button


  Scenario: Edit person
    When I go to the person page
    And I click Edit button
    And I enter job "Actor"
    And I click on the Add button
    Then I Click Reset list button

  Scenario: Delete person
    When I go to the person page
    And  I Click Delete button
    Then I Click Reset list button



