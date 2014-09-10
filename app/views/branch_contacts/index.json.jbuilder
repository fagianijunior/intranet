json.array!(@branch_contacts) do |branch_contact|
  json.extract! branch_contact, :id, :branch_id, :contacttype_id, :contact
  json.url branch_contact_url(branch_contact, format: :json)
end
