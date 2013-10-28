class RubyOnRailsCourseScholarshipController < ApplicationController
  def index
  	@scholarship = Scholarship.new
  end
end
