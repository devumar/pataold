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

FactoryGirl.define do
  factory :assign do
    tenant_id 1
    houses_id 1
    properties_id "MyString"
  end
end
