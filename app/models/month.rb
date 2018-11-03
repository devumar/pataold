# == Schema Information
#
# Table name: months
#
#  id            :integer          not null, primary key
#  tenant_id     :integer
#  amount        :decimal(10, )
#  month         :integer
#  year          :integer
#  field_officer :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Month < ActiveRecord::Base
end
