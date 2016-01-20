require 'rails_helper'

RSpec.describe "campaigns/index", type: :view do
  before(:each) do
    assign(:campaigns, [
      Campaign.create!(
        :name => "Name",
        :genre => "Genre",
        :user => nil
      ),
      Campaign.create!(
        :name => "Name",
        :genre => "Genre",
        :user => nil
      )
    ])
  end

  it "renders a list of campaigns" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
