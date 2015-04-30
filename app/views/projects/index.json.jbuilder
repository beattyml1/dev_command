json.array!(@projects) do |project|
  json.extract! project, :id, :code_name, :friendly_name, :user_id, :project_id
  json.url project_url(project, format: :json)
end
