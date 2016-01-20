require 'rails_helper'

RSpec.describe "campaigns/new", type: :view do
  before(:each) do
    assign(:campaign, Campaign.new(
      :name => "MyString",
      :genre => "MyString",
      :user => nil
    ))
  end

  it "renders new campaign form" do
    render

    assert_select "form[action=?][method=?]", campaigns_path, "post" do

      assert_select "input#campaign_name[name=?]", "campaign[name]"

      assert_select "input#campaign_genre[name=?]", "campaign[genre]"

      assert_select "input#campaign_user_id[name=?]", "campaign[user_id]"
    end
  end
end
