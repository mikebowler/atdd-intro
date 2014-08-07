Feature: Making Cheese

  as a .. i want .. so that..
  This is a test feature to check that the cucumber is working as expected

  Scenario: Using the cheese machine
    Given I have no cheese
    When I press the make cheese button
    Then I should have one piece of cheese


  Scenario: Using the calculator to perform addition
    Given I am using my fancy new calculator
    When I add the numbers 3 and 4
    Then I should have the answer 7


  Scenario Outline: Using the calculator to perform addition
    Given I am using my fancy new calculator
    When I add the numbers <num1> and <num2>
    Then I should have the answer <answer>

  Examples:
    | num1 | num2 | answer |
    | 3    | 4    | 7      |
    | 5    | 0    | 5      |
    | 6    | -1   | 5      |


