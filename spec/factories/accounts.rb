# == Schema Information
#
# Table name: accounts
#
#  id            :integer          not null, primary key
#  accountname   :string(255)
#  type          :string(255)
#  defaultamount :decimal(10, )
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :account do
    accountname "MyString"
    type ""
    defaultamount "9.99"
  end
end
