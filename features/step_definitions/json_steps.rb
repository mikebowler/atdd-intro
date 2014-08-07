Given(/^I have the following json contact list:$/) do |table|
  # table is a table.hashes.keys # => [:name, :phone]
  pending
end

When(/^I search for "([^"]*)" in the json$/) do |name|
  pending
end

Then(/^I should get the phone number "(\d+\-\d+)"$/) do |phone|
  expect(@the_contact[1]).to eql phone
end