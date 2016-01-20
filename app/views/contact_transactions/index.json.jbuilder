json.array!(@contact_transactions) do |contact_transaction|
  json.extract! contact_transaction, :id, :phone_numer, :genre, :duration, :charge, :run_id
  json.url contact_transaction_url(contact_transaction, format: :json)
end
