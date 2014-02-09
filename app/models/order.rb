# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Order < ActiveRecord::Base
  has_many :line_items

  def total
    total = 0
    line_items.each do |line_item|
      total += (line_item.quantity * line_item.product.price)
    end
    total
  end
end
