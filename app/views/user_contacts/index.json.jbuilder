json.array!(@user_contacts) do |user_contact|
  json.extract! user_contact, :id, :user_id, :contacttype_id, :contact
  json.url user_contact_url(user_contact, format: :json)
end
