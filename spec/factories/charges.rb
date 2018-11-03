# == Schema Information
#
# Table name: charges
#
#  id          :integer          not null, primary key
#  amount      :decimal(10, )
#  month       :integer
#  account     :integer
#  property_id :integer
#  mode        :string(255)
#  tenant_id   :integer
#  receipt     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :charge do
    amount "9.99"
    month 1
    account 1
    property_id 1
    mode "MyString"
    tenant_id 1
    receipt "MyString"
  end
end
