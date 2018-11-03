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

require 'rails_helper'

RSpec.describe Month, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
