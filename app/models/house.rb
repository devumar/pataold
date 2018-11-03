# == Schema Information
#
# Table name: houses
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class House < ActiveRecord::Base
belongs_to :property
belongs_to :tenant
has_many :assigns

attr_accessor :done, :property_id

scope :status, -> { where(status: 'vacant') }
end
