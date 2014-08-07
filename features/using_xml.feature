Feature: Using XML in our tests

  Use Nokogiri to read XML and do cool stuff

  Scenario: Finding shows
    When I read the shows in the XML file
    Then I expect to have 2 sitcoms
    And I expect to have 1 drama


  # using 'builder' to create XML:

  Scenario:Finding a contact in the XML
    Given I have the following xml contact list:
      | name   | phone    |
      | Cheezy | 555-5555 |
      | Sneezy | 777-7777 |
      | Wheezy | 999-9999 |
    When I search for "Sneezy"
    Then I should get the number "777-7777"


