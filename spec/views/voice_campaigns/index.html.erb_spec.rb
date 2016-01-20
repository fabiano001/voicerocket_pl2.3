require 'rails_helper'

RSpec.describe "voice_campaigns/index", type: :view do
  before(:each) do
    assign(:voice_campaigns, [
      VoiceCampaign.create!(
        :name => "Name",
        :user => nil
      ),
      VoiceCampaign.create!(
        :name => "Name",
        :user => nil
      )
    ])
  end

  it "renders a list of voice_campaigns" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
