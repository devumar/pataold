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

require 'rails_helper'

RSpec.describe Tenant, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
