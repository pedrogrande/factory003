class CourseSkill < ActiveRecord::Base
  belongs_to :course
  belongs_to :skill
  # attr_accessible :title, :body
end
