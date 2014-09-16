json.array!(@uniform_piece_types) do |uniform_piece_type|
  json.extract! uniform_piece_type, :id, :name, :picture
  json.url uniform_piece_type_url(uniform_piece_type, format: :json)
end
