json.array!(@captains) do |captain|
  json.extract! captain, :id, :user_id, :name, :world, :cartel
  json.url captain_url(captain, format: :json)
end
