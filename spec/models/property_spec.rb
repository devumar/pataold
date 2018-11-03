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

require 'rails_helper'

RSpec.describe Property, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
