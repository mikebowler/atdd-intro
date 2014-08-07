When(/^I read the shows in the XML file$/) do
  file = File.open('artifacts/shows.xml')
  @xml_doc = Nokogiri::XML(file)
  file.close
end

Then(/^I expect to have (\d+) sitcoms$/) do |num|
  sitcoms = @xml_doc.xpath('//sitcom')
  expect(sitcoms.size).to eql num.to_i
end

And(/^I expect to have (\d+) drama$/) do |num|
  dramas = @xml_doc.xpath('//drama')
  expect(dramas.size).to eql num.to_i
end


Given(/^I have the following xml contact list:$/) do |table|
  # table is a table.hashes.keys # => [:name, :phone]
  puts table
  builder = Builder::XmlMarkup.new(:indent => 2)
  @xml = builder.contacts do |contacts|
    table.hashes.each do |hsh|
      contacts.contact do |contact|
        contact.name hsh[:name]
        contact.phone hsh[:phone]
      end
    end
  end

  # puts @xml
end

When(/^I search for "([^"]*)"$/) do |name|
  xml_doc = Nokogiri::XML(@xml)
  contacts = xml_doc.xpath('//contact')
  @person = contacts.find {|contact| contact.content.include? name}
end

Then(/^I should get the number "(\d+\-\d+)"$/) do |phone_num|
  the_phone = @person.at_xpath('.//phone')
  expect(the_phone.content).to eql phone_num
end