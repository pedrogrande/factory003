json.array!(@enrolments) do |enrolment|
  json.extract! enrolment, :name, :email, :phone, :referral, :intake_id
  json.url enrolment_url(enrolment, format: :json)
end
