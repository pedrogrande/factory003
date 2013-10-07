class Skill < ActiveRecord::Base
  attr_accessible :description, :name, :course_ids
  default_scope order: 'skills.length ASC'
  has_many :course_skills
  has_many :courses, through: :course_skills

  def find_length
  	self.length = self.name.length
  	self.save
  end
end
