# == Schema Information
#
# Table name: unittypes
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Unittype, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
