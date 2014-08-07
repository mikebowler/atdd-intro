Feature: Interacting with the REST API using HTTParty


  Scenario: Retrieve Json data
    When I connect to the Puppies Web Site API
    Then I expect to receive a list of puppies


  Scenario: Count the Puppies
    When I connect to the Puppies Web Site API
    Then I can count the puppies on the list


  Scenario: examine Json for specific information
    Given I have the list of puppies from the web server
    When I retrieve the data for ‘Maggie Mae’
    Then I expect the fees to be $24.95

