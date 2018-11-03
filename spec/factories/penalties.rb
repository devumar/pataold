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

FactoryGirl.define do
  factory :penalty do
    tenant_id 1
    amount "9.99"
  end
end
