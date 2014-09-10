json.array!(@positions) do |position|
  json.extract! position, :id, :position
  json.url position_url(position, format: :json)
end
