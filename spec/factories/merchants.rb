# == Schema Information
#
# Table name: merchants
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :merchant do
    address "123 Main St"
    name    "John Merchant"
  end
end
