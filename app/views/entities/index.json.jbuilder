json.array!(@entities) do |entity|
  json.extract! entity, :id, :project_id, :code_name, :label, :layout_hint, :field_id
  json.url entity_url(entity, format: :json)
end
