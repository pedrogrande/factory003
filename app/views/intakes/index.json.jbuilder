json.array!(@intakes) do |intake|
  json.extract! intake, :course_id, :start_date, :start_time, :finish_time, :duration, :duration_type, :scheduled, :confirmed, :location, :cost
  json.url intake_url(intake, format: :json)
end
