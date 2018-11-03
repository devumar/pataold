# == Schema Information
#
# Table name: fields
#
#  id         :integer          not null, primary key
#  names      :string(255)
#  plot_no    :string(255)
#  unit_no    :string(255)
#  amount     :decimal(10, )
#  receipt    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Field < ActiveRecord::Base



end
