json.array!(@messages) do |message|
  json.extract! message, :icon, :title, :content, :active, :priority
  json.url message_url(message, format: :json)
end
