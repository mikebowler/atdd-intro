Feature: Using JSON in our tests

  Scenario:
    Given I have the following json contact list:
      | name   | phone    |
      | Cheezy | 555-5555 |
      | Sneezy | 777-7777 |
      | Wheezy | 999-9999 |
    When I search for "Sneezy" in the json
    Then I should get the phone number "777-7777"
