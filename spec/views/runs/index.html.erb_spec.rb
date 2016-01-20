require 'rails_helper'

RSpec.describe "runs/index", type: :view do
  before(:each) do
    assign(:runs, [
      Run.create!(
        :status => "Status",
        :contact_list => nil,
        :campaign => nil,
        :voice_campaign => nil
      ),
      Run.create!(
        :status => "Status",
        :contact_list => nil,
        :campaign => nil,
        :voice_campaign => nil
      )
    ])
  end

  it "renders a list of runs" do
    render
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
