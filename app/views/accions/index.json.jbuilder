json.array!(@accions) do |accion|
  json.extract! accion, :id, :nombre, :porcentaje_realizado, :objetivo_id
  json.url accion_url(accion, format: :json)
end
