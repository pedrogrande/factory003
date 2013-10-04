json.array!(@registrations) do |registration|
  json.extract! registration, :name, :email, :phone, :course_id, :opt_in
  json.url registration_url(registration, format: :json)
end
