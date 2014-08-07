class Order < ActiveRecord::Base
  has_many :adoptions
end

# Add this part when you get to the Factory Girl slide/exercise

FactoryGirl.define do
  factory :order do
    name 'Cheezy'
    address '123 Main Street'
    email 'cheezy@example.com'
    pay_type 'Credit card'
  end
end
