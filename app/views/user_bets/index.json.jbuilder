json.array!(@user_bets) do |user_bet|
  json.extract! user_bet, :id, :wager, :game_id, :team_name
  json.url user_bet_url(user_bet, format: :json)
end
