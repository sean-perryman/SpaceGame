json.array!(@player_ships) do |player_ship|
  json.extract! player_ship, :id, :captain_id, :ship_id, :name, :fuel_total, :fuel_remaining, :cargo_spaces, :fighters
  json.url player_ship_url(player_ship, format: :json)
end
