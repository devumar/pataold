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

FactoryGirl.define do
  factory :arrear do
    tenant_id "MyString"
    integer "MyString"
    amount "9.99"
  end
end
