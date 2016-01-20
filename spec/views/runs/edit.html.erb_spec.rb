require 'rails_helper'

RSpec.describe "runs/edit", type: :view do
  before(:each) do
    @run = assign(:run, Run.create!(
      :status => "MyString",
      :contact_list => nil,
      :campaign => nil,
      :voice_campaign => nil
    ))
  end

  it "renders the edit run form" do
    render

    assert_select "form[action=?][method=?]", run_path(@run), "post" do

      assert_select "input#run_status[name=?]", "run[status]"

      assert_select "input#run_contact_list_id[name=?]", "run[contact_list_id]"

      assert_select "input#run_campaign_id[name=?]", "run[campaign_id]"

      assert_select "input#run_voice_campaign_id[name=?]", "run[voice_campaign_id]"
    end
  end
end
