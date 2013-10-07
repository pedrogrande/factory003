class Skill < ActiveRecord::Base
  attr_accessible :description, :name, :course_ids
  
  has_many :course_skills
  has_many :courses, through: :course_skills
end
