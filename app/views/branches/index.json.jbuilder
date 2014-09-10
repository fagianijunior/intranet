json.array!(@branches) do |branch|
  json.extract! branch, :id, :branch, :address, :city_id, :state_id
  json.url branch_url(branch, format: :json)
end
