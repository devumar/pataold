# == Schema Information
#
# Table name: unittypes
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Unittype < ActiveRecord::Base
end
