$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'rspec'
require 'require_all'

require 'active_record'
require 'factory_girl'

require 'nokogiri'

require 'builder'

require 'httparty'
require 'pp'

require_all 'lib'

World(FactoryGirl::Syntax::Methods)

