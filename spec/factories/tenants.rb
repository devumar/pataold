# == Schema Information
#
# Table name: tenants
#
#  id          :integer          not null, primary key
#  fname       :string(255)
#  lname       :string(255)
#  address     :string(255)
#  town        :string(255)
#  phone       :integer
#  national_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  status      :string(255)
#

FactoryGirl.define do
  factory :tenant do
    fname "MyString"
    lname "MyString"
    address "MyString"
    town "MyString"
    phone 1
    national_id 1
  end
end
