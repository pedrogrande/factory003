class Enrolment < ActiveRecord::Base
  has_many :intake_enrolments
  has_many :intakes, through: :intake_enrolments

  validates_presence_of :name, :email, :phone, :referral

  attr_accessible :name, :email, :phone, :referral, :intake_ids
end
