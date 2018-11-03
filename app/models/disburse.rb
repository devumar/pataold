# == Schema Information
#
# Table name: disburses
#
#  id          :integer          not null, primary key
#  property_id :integer
#  month       :integer
#  year        :date
#  amount      :decimal(10, )
#  paid_by     :string(255)
#  mode        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Disburse < ActiveRecord::Base
end
