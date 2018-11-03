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

FactoryGirl.define do
  factory :disburse do
    property_id 1
    month 1
    year "2017-08-30"
    amount "9.99"
    paid_by "MyString"
    mode "MyString"
  end
end
