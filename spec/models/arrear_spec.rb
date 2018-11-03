# == Schema Information
#
# Table name: arrears
#
#  id         :integer          not null, primary key
#  tenant_id  :string(255)
#  integer    :string(255)
#  amount     :decimal(10, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Arrear, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
