class Event < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged

	default_scope order: 'events.date ASC'

	scope :published, -> { where(publish: true) }

	def self.next_event
		where("date >= ?", Date.today)
	end

	def self.current_month(date)
    	where("date < ?", date)
  	end

  	attr_accessible :publish, :title, :intro, :description, :location, :address, :suburb, :postcode, :date, :start_time, :finish_time, :cost, :rsvp, :icon
  	
end
