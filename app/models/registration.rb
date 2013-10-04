class Registration < ActiveRecord::Base
  has_many :course_registrations
  has_many :courses, through: :course_registrations
  validates_presence_of :name, :email

  attr_accessible :name, :email, :phone, :opt_in, :course_ids
end
