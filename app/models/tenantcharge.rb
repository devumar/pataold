# == Schema Information
#
# Table name: tenantcharges
#
#  id          :integer          not null, primary key
#  amount      :decimal(10, )
#  bank_acc    :string(255)
#  bank        :string(255)
#  cheque      :string(255)
#  account     :integer
#  property_id :string(255)
#  mode        :string(255)
#  tenant_id   :integer
#  receipt_no  :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tenantcharge < ActiveRecord::Base
end
