When(/^I connect to the Puppies Web Site API$/) do
  # base_url = 'http://puppies.herokuapp.com/puppies.json'
  # @response = HTTParty.get base_url
  @puppy_list = PuppyServices.new
end

Then(/^I expect to receive a list of puppies$/) do
  # pp @response
  @puppy_list.show_list
end

Then(/^I can count the puppies on the list$/) do
  # puts @response.size
  puts @puppy_list.count
end


Given(/^I have the list of puppies from the web server$/) do
  # base_url = 'http://puppies.herokuapp.com/puppies.json'
  # @response = HTTParty.get base_url
  @puppy_list = PuppyServices.new
end

When(/^I retrieve the data for ‘([^"]*)’$/) do |puppy_name|
  # puppy_id = 0
  # @response.each do |puppy_info|
  #   puppy_id = puppy_info['puppy']['id'] if puppy_info['puppy']['name'] == puppy_name
  # end
  # new_url = "http://puppies.herokuapp.com/puppies/#{puppy_id}.json"
  # @puppy_response = HTTParty.get new_url

  @puppy_response = @puppy_list.retrieve_puppy( puppy_name )
end

Then(/^I expect the fees to be \$(\d+\.\d+)$/) do |fee|
  # pp @puppy_response['puppy']['fees']
  expect( @puppy_response['puppy']['fees'] ).to eql fee
end
