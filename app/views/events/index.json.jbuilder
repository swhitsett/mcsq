json.array!(@events) do |event|
  json.extract! event, :id, :e_name, :team_1, :team_2, :team_1_odds, :team_2_odds, :final_score, :game_end_time, :total_pot
  json.url event_url(event, format: :json)
end
