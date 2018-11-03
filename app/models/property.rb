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

class Property < ActiveRecord::Base
  belongs_to :landlord
  has_many :transactions, :dependent => :destroy
  has_many :houses
  accepts_nested_attributes_for :houses, :reject_if => lambda { |a| a[:unit_name].blank? }, :allow_destroy => true
  

def self.search(search)
  where("estate LIKE ? OR plot_no LIKE ? OR town LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
end


end    
 
