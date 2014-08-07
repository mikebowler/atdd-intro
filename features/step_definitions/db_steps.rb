Given(/^I know how many orders I have$/) do
  @order_count = Order.count
  puts @order_count
end

When(/^I create a new order$/) do
  # order = Order.new
  # order.name = 'Cheezy'
  # order.address = '123 Main Street'
  # order.email = 'cheezy@example.com'
  # order.pay_type = 'Credit card'
  # order.save

  # with the Factory Girl gem this becomes:
  create(:order)
end

Then(/^I should have (\d+) additional order$/) do |additional|
  expect(Order.count).to eql @order_count + additional.to_i
end


Given(/^I have an order for "([^"]*)"$/) do |name|
  the_name = name.downcase.gsub(' ', '_')
  puts "FYI: #{name} was converted to #{the_name}"

  # order = Order.new
  # order.name = name
  # order.address = '555 South High'
  # order.email = "#{the_name}@example.com"
  # order.pay_type = 'Credit card'
  # order.save

  # with Factory Girl the above now becomes:
  create(:order, :name => name, :email => "#{the_name}@example.com")

  @the_name = name
end

When(/^I read that record$/) do
  @the_order = Order.find_by_name(@the_name)
end

Then(/^I should see it has the name "([^"]*)"$/) do |name|
  expect(@the_order.name).to eql name
end

When(/^I update the name to "([^"]*)"$/) do |name|
  the_order = Order.find_by_name(@the_name)
  the_order.name = name
  the_order.save
end

Then(/^I should have a record for "([^"]*)"$/) do |name|
  the_order = Order.find_by_name(name)
  expect(the_order.name).to eql name
end

When(/^I delete that record$/) do
  the_order = Order.find_by_name(@the_name)
  the_order.delete
end

Then(/^I should not have an order for "([^"]*)"$/) do |name|
  the_order = Order.find_by_name(name)
  expect(the_order).to be_nil
end