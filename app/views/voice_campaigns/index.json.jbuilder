json.array!(@voice_campaigns) do |voice_campaign|
  json.extract! voice_campaign, :id, :name, :user_id
  json.url voice_campaign_url(voice_campaign, format: :json)
end
