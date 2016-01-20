require 'rails_helper'

RSpec.describe "run_stats/index", type: :view do
  before(:each) do
    assign(:run_stats, [
      RunStat.create!(
        :run => nil,
        :live_answer => 1,
        :machine_answer => 2,
        :do_not_call => 3,
        :no_answer => 4,
        :carrier_error => 5,
        :busy_signal => 6,
        :total_cost => 1.5,
        :total_called => 7,
        :total_left_to_call => 8,
        :successful_contacts => 9,
        :unsuccessful_contacts => 10
      ),
      RunStat.create!(
        :run => nil,
        :live_answer => 1,
        :machine_answer => 2,
        :do_not_call => 3,
        :no_answer => 4,
        :carrier_error => 5,
        :busy_signal => 6,
        :total_cost => 1.5,
        :total_called => 7,
        :total_left_to_call => 8,
        :successful_contacts => 9,
        :unsuccessful_contacts => 10
      )
    ])
  end

  it "renders a list of run_stats" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
  end
end
