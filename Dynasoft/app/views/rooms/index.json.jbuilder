json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :occupancy, :location, :maxOccupancy, :editor
  json.url room_url(room, format: :json)
end
