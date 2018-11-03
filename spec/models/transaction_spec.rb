# == Schema Information
#
# Table name: transactions
#
#  id          :integer          not null, primary key
#  month       :integer
#  amount      :decimal(10, )
#  tenant_id   :integer
#  date        :datetime
#  received_by :string(255)
#  property_id :string(255)
#  receipt_no  :string(255)
#  mode        :string(255)
#  disbursed   :integer
#  year        :date
#  d_id        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Transaction, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
