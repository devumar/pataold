# == Schema Information
#
# Table name: landlords
#
#  id             :integer          not null, primary key
#  fname          :string(255)
#  oname          :string(255)
#  postal_address :string(255)
#  town           :string(255)
#  national_id    :integer
#  phone          :integer
#  email          :string(255)
#  status         :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :landlord do
    
  end
end
