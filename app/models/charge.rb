# == Schema Information
#
# Table name: charges
#
#  id          :integer          not null, primary key
#  amount      :decimal(10, )
#  month       :integer
#  account     :integer
#  property_id :integer
#  mode        :string(255)
#  tenant_id   :integer
#  receipt     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Charge < ActiveRecord::Base
   belongs_to :tenant 
end
