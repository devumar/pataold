# == Schema Information
#
# Table name: unittypes
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :unittype do
    type ""
  end
end
