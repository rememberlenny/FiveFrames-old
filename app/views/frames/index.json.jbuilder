json.array!(@frames) do |frame|
  json.extract! frame, :id, :character
  json.url frame_url(frame, format: :json)
end
