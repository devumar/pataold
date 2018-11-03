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

FactoryGirl.define do
  factory :transaction do
    month 1
    amount "9.99"
    tenant_id 1
    date "2017-08-18 11:33:38"
    received_by "MyString"
    property_id "MyString"
    receipt_no "MyString"
    mode "MyString"
    disbursed 1
    year "2017-08-18"
    d_id 1
  end
end
