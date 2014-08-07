Feature: Using the database in our tests

  Scenario: Creating a new order
    Given I know how many orders I have
    When I create a new order
    Then I should have 1 additional order

  Scenario: Reading a record from the database
    Given I have an order for "Tom Jones"
    When I read that record
    Then I should see it has the name "Tom Jones"

  Scenario: Update a record
    Given I have an order for "Mickey Mouse"
    When I update the name to "Donald Duck"
    Then I should have a record for "Donald Duck"

  Scenario: Deleting a record
    Given I have an order for "Ted Nugent"
    When I delete that record
    Then I should not have an order for "Ted Nugent"
