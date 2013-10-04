json.array!(@events) do |event|
  json.extract! event, :title, :intro, :description, :location, :address, :suburb, :postcode, :date, :start_time, :finish_time, :cost, :rsvp, :icon
  json.url event_url(event, format: :json)
end
