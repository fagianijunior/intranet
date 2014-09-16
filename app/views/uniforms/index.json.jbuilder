json.array!(@uniforms) do |uniform|
  json.extract! uniform, :id, :uniform_piece_type_id, :uniform_piece_group_id, :entry, :expiration, :user_id
  json.url uniform_url(uniform, format: :json)
end
