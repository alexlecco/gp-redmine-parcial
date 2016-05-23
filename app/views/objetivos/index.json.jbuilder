json.array!(@objetivos) do |objetivo|
  json.extract! objetivo, :id, :nombre, :lineamiento_id
  json.url objetivo_url(objetivo, format: :json)
end
