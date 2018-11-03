# == Schema Information
#
# Table name: assigns
#
#  id            :integer          not null, primary key
#  tenant_id     :integer
#  houses_id     :integer
#  properties_id :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Assign < ActiveRecord::Base
 belongs_to :tenant
 belongs_to :house
end
