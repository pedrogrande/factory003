class Scholarship < ActiveRecord::Base
  attr_accessible :agree_to_terms, :background, :education_history, :email, :first_name, :goals, :last_name, :linkedin, :motivation, :phone, :referrer, :work_history

  validates_presence_of :agree_to_terms, :background, :education_history, :email, :first_name, :goals, :last_name, :linkedin, :motivation, :phone, :work_history

end
