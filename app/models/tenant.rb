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

class Tenant < ActiveRecord::Base
  has_many :assigns
  has_many :houses
  has_many :charges
  has_many :transactions
  has_many :arrears

  accepts_nested_attributes_for :assigns
	accepts_nested_attributes_for :charges
  accepts_nested_attributes_for :houses, :reject_if => lambda { |a| a[:unit_name].blank? }, :allow_destroy => true

  #validates :fname, presence: true, if: :step1?
  #validates :estate, presence: true, if: :step2?
  #validates :tags, presence: true, if: :step3?

  include MultiStepModel

  def self.total_steps
    2
  end 

  def self.search(search)
    where("concat_ws(' ' , fname, lname) LIKE ?", "%#{search}%")
  end

  def full_name
    fname.to_s + " " + lname
  end

end 
