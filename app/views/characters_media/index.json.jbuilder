json.array!(@characters_media) do |characters_media|
  json.extract! characters_media, :id
  json.url characters_media_url(characters_media, format: :json)
end
