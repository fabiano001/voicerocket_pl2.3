require 'rails_helper'

RSpec.describe "voice_campaigns/show", type: :view do
  before(:each) do
    @voice_campaign = assign(:voice_campaign, VoiceCampaign.create!(
      :name => "Name",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
