class AdminController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@courses = Course.all
  	@intakes = Intake.all
  	@events = Event.all
  	
  end
end
