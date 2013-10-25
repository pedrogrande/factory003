class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_next_event

  def get_next_event
  	@next_event = Event.next_event.first
    @next_intake = Intake.future_intakes.first
  end

  private
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
