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

require 'rails_helper'

RSpec.describe Assign, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
