class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_next_event

  def get_next_event
  	@next_event = Event.first
    @next_intake = Intake.first
  end

  private
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
