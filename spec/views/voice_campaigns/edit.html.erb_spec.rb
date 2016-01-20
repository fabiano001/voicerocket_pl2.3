require 'rails_helper'

RSpec.describe "voice_campaigns/edit", type: :view do
  before(:each) do
    @voice_campaign = assign(:voice_campaign, VoiceCampaign.create!(
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders the edit voice_campaign form" do
    render

    assert_select "form[action=?][method=?]", voice_campaign_path(@voice_campaign), "post" do

      assert_select "input#voice_campaign_name[name=?]", "voice_campaign[name]"

      assert_select "input#voice_campaign_user_id[name=?]", "voice_campaign[user_id]"
    end
  end
end
