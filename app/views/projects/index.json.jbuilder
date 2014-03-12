json.array!(@projects) do |project|
  json.extract! project, :id, :title, :scope, :team_id, :fmea_id
  json.url project_url(project, format: :json)
end
