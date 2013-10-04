json.array!(@courses) do |course|
  json.extract! course, :title, :icon, :publish, :intro, :description, :designed_for
  json.url course_url(course, format: :json)
end
