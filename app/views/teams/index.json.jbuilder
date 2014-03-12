json.array!(@teams) do |team|
  json.extract! team, :id, :user_id, :project_id
  json.url team_url(team, format: :json)
end
