# == Schema Information
#
# Table name: months
#
#  id            :integer          not null, primary key
#  tenant_id     :integer
#  amount        :decimal(10, )
#  month         :integer
#  year          :integer
#  field_officer :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :month do
    tenant_id 1
    amount "9.99"
    month 1
    year 1
    field_officer 1
  end
end
