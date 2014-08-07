Given(/^I have no cheese$/) do
  puts 'We are sad. We have no cheese.'
end

When(/^I press the make cheese button$/) do
  puts 'There is hope! Will it work?'
end

Then(/^I should have one piece of cheese$/) do
  puts 'Rejoice everyone. We have cheese!! :)'
  # expect(2).to eql? 3
end

# Second scenario: Calculator

Given(/^I am using my fancy new calculator$/) do
  @calculator = Calculator.new
end

# When(/^I add the numbers (\d+) and (\d+)$/) do |num1, num2|
When(/^I add the numbers (-*\d+) and (-*\d+)$/) do |num1, num2|
  # @sum = num1.to_i + num2.to_i
  @sum = @calculator.add(num1.to_i, num2.to_i)
  puts @sum
end

# Then(/^I should have the answer (\d+)$/) do |answer|
Then(/^I should have the answer (-*\d+)$/) do |answer|
  expect(@sum).to eql answer.to_i
end

