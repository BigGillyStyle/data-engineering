# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  description :string(255)
#  price       :decimal(, )
#  created_at  :datetime
#  updated_at  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    description "the product"
    price       5.0
  end
end
