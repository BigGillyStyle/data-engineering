class LineItem < ActiveRecord::Base
  belongs_to :Purchaser
  belongs_to :Product
  belongs_to :Merchant
  belongs_to :Order
end
