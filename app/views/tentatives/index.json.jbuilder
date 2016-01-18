json.array!(@tentatives) do |tentative|
  json.extract! tentative, :id, :user_id, :game_id, :chapter, :level, :success, :shots, :beurk, :score
  json.url tentative_url(tentative, format: :json)
end
