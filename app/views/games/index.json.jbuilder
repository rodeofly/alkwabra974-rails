json.array!(@games) do |game|
  json.extract! game, :id, :name, :description, :screenshot
  json.url game_url(game, format: :json)
end
