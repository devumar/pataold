# == Schema Information
#
# Table name: receipts
#
#  id          :integer          not null, primary key
#  month       :integer
#  unit_name   :string(255)
#  property_id :integer
#  receipt_no  :string(255)
#  mode        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Receipt < ActiveRecord::Base
end
