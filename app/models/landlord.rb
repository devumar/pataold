# == Schema Information
#
# Table name: landlords
#
#  id             :integer          not null, primary key
#  fname          :string(255)
#  oname          :string(255)
#  postal_address :string(255)
#  town           :string(255)
#  national_id    :integer
#  phone          :integer
#  email          :string(255)
#  status         :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Landlord < ActiveRecord::Base
  has_many :properties
  #has_many :housedetails, through: :landlord
  accepts_nested_attributes_for :properties

  validates :fname, presence: true, if: :step1?
  #validates :estate, presence: true, if: :step2?
  #validates :tags, presence: true, if: :step3?

  include MultiStepModel

  def self.total_steps
    2
  end 



end


 
