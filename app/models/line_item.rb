# == Schema Information
#
# Table name: line_items
#
#  id           :integer          not null, primary key
#  Purchaser_id :integer
#  Product_id   :integer
#  Merchant_id  :integer
#  Order_id     :integer
#  quantity     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class LineItem < ActiveRecord::Base
  belongs_to :Purchaser
  belongs_to :Product
  belongs_to :Merchant
  belongs_to :Order
end
