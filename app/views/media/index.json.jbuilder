json.array!(@media) do |media|
  json.extract! media, :id
  json.url media_url(media, format: :json)
end
