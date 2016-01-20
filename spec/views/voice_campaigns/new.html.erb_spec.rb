require 'rails_helper'

RSpec.describe "voice_campaigns/new", type: :view do
  before(:each) do
    assign(:voice_campaign, VoiceCampaign.new(
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders new voice_campaign form" do
    render

    assert_select "form[action=?][method=?]", voice_campaigns_path, "post" do

      assert_select "input#voice_campaign_name[name=?]", "voice_campaign[name]"

      assert_select "input#voice_campaign_user_id[name=?]", "voice_campaign[user_id]"
    end
  end
end
