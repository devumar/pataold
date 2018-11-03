# == Schema Information
#
# Table name: properties
#
#  id            :integer          not null, primary key
#  estate        :string(255)
#  plot_no       :string(255)
#  units_on_plot :integer
#  field_officer :integer
#  landlord_id   :integer
#  plot_name     :string(255)
#  town          :string(255)
#  commission    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :property do
    estate "MyString"
    plot_no "MyString"
    units_on_plot 1
    field_officer 1
    landlord_id 1
    plot_name "MyString"
    town "MyString"
    commission 1
  end
end
