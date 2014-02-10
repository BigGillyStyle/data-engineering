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

class LineItem < ActiveRecord::Base
  belongs_to :purchaser
  belongs_to :merchant
  belongs_to :order
  belongs_to :product
end
