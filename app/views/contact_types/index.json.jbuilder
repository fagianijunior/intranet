json.array!(@contact_types) do |contact_type|
  json.extract! contact_type, :id, :type, :regex
  json.url contact_type_url(contact_type, format: :json)
end
