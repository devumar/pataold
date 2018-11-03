# == Schema Information
#
# Table name: disburses
#
#  id          :integer          not null, primary key
#  property_id :integer
#  month       :integer
#  year        :date
#  amount      :decimal(10, )
#  paid_by     :string(255)
#  mode        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Disburse, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
