# == Schema Information
#
# Table name: penalties
#
#  id         :integer          not null, primary key
#  tenant_id  :integer
#  amount     :decimal(10, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Penalty, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
