class HomeController < ApplicationController
  layout 'home'
  def index
  	@messages = Message.where("active = ?", true)
  end
end
