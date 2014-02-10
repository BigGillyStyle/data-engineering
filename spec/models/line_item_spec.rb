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

require 'spec_helper'

describe LineItem do
  pending "add some examples to (or delete) #{__FILE__}"
end
