require 'rails_helper'

RSpec.describe "campaigns/edit", type: :view do
  before(:each) do
    @campaign = assign(:campaign, Campaign.create!(
      :name => "MyString",
      :genre => "MyString",
      :user => nil
    ))
  end

  it "renders the edit campaign form" do
    render

    assert_select "form[action=?][method=?]", campaign_path(@campaign), "post" do

      assert_select "input#campaign_name[name=?]", "campaign[name]"

      assert_select "input#campaign_genre[name=?]", "campaign[genre]"

      assert_select "input#campaign_user_id[name=?]", "campaign[user_id]"
    end
  end
end
