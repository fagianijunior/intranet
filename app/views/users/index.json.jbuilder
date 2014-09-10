json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password_digest, :avatar, :gender_id, :birth_date, :address, :city_id, :state_id, :position_id, :branch_id, :active
  json.url user_url(user, format: :json)
end
