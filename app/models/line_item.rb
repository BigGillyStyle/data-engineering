class LineItem < ActiveRecord::Base
  belongs_to :purchaser
  belongs_to :merchant
  belongs_to :order
  belongs_to :product
end
