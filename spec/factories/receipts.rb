# == Schema Information
#
# Table name: receipts
#
#  id          :integer          not null, primary key
#  month       :integer
#  unit_name   :string(255)
#  property_id :integer
#  receipt_no  :string(255)
#  mode        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :receipt do
    month 1
    unit_name "MyString"
    property_id 1
    receipt_no "MyString"
    mode "MyString"
  end
end
