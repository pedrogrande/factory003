class Intake < ActiveRecord::Base
  belongs_to :course
  
  has_many :intake_enrolments
  has_many :enrolments, through: :intake_enrolments

  default_scope order: 'intakes.start_date ASC'
  scope :scheduled, -> { where(scheduled: true) }
  scope :future_intakes, -> { scheduled.where("start_date >= ?", Date.today)}


  # def self.future_intakes
  # 	where("start_date >= ?", Date.today && "scheduled == ", true)
  # end

  attr_accessible :notes, :class_days, :course_id, :start_date, :start_time, :finish_time, :duration, :duration_type, :scheduled, :confirmed, :location, :cost
end
