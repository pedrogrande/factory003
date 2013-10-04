class SitemapController < ApplicationController
  layout nil
  def index
    @static_paths = [root_path, calendar_path, about_path, contact_path, courses_path]
    @courses = Course.all
    @events = Event.all
    @base_url = "http://#{request.host_with_port}"
    respond_to do |format|
      format.xml
    end
  end
end
