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
    @total ||= line_items.reduce(0) do |sum, line_item|
      sum + (line_item.quantity * line_item.product.price)
    end
  end
end
