# == Schema Information
#
# Table name: merchants
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Merchant < ActiveRecord::Base
end
