json.array!(@runs) do |run|
  json.extract! run, :id, :status, :launch, :contact_list_id, :campaign_id, :voice_campaign_id
  json.url run_url(run, format: :json)
end
