json.array!(@fields) do |field|
  json.extract! field, :id, :code_name, :label, :entity_id, :field_type, :required, :min, :max, :ui_hint
  json.url field_url(field, format: :json)
end
