class CalendarController < ApplicationController
  def index
  	@current_month_events = Event.current_month(Date.today + 30.days)
  end
end
