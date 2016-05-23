json.array!(@lineamientos) do |lineamiento|
  json.extract! lineamiento, :id, :nombre
  json.url lineamiento_url(lineamiento, format: :json)
end
