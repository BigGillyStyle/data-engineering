# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Order do
  it "calculates an accurate total" do
    # setup the data
    order = FactoryGirl.create :order
    product = FactoryGirl.create :product
    line_item1 = FactoryGirl.create(:line_item,
      order: order,
      product: product
    )
    line_item2 = FactoryGirl.create(:line_item,
      order: order,
      product: product
    )

    # call the behavior
    total = order.total

    # set expectations
    expect(total).to eq 10.0
  end
end
