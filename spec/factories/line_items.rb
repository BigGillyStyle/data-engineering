# == Schema Information
#
# Table name: line_items
#
#  id           :integer          not null, primary key
#  purchaser_id :integer
#  merchant_id  :integer
#  order_id     :integer
#  product_id   :integer
#  quantity     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :line_item do
    quantity 1
  end
end
