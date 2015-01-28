json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :company, :title, :email, :phone, :address, :linkedin, :twitter, :facebook, :previouscompany, :notes, :personalnote, :duedate
  json.url contact_url(contact, format: :json)
end
