require 'rails_helper'

RSpec.describe "run_stats/edit", type: :view do
  before(:each) do
    @run_stat = assign(:run_stat, RunStat.create!(
      :run => nil,
      :live_answer => 1,
      :machine_answer => 1,
      :do_not_call => 1,
      :no_answer => 1,
      :carrier_error => 1,
      :busy_signal => 1,
      :total_cost => 1.5,
      :total_called => 1,
      :total_left_to_call => 1,
      :successful_contacts => 1,
      :unsuccessful_contacts => 1
    ))
  end

  it "renders the edit run_stat form" do
    render

    assert_select "form[action=?][method=?]", run_stat_path(@run_stat), "post" do

      assert_select "input#run_stat_run_id[name=?]", "run_stat[run_id]"

      assert_select "input#run_stat_live_answer[name=?]", "run_stat[live_answer]"

      assert_select "input#run_stat_machine_answer[name=?]", "run_stat[machine_answer]"

      assert_select "input#run_stat_do_not_call[name=?]", "run_stat[do_not_call]"

      assert_select "input#run_stat_no_answer[name=?]", "run_stat[no_answer]"

      assert_select "input#run_stat_carrier_error[name=?]", "run_stat[carrier_error]"

      assert_select "input#run_stat_busy_signal[name=?]", "run_stat[busy_signal]"

      assert_select "input#run_stat_total_cost[name=?]", "run_stat[total_cost]"

      assert_select "input#run_stat_total_called[name=?]", "run_stat[total_called]"

      assert_select "input#run_stat_total_left_to_call[name=?]", "run_stat[total_left_to_call]"

      assert_select "input#run_stat_successful_contacts[name=?]", "run_stat[successful_contacts]"

      assert_select "input#run_stat_unsuccessful_contacts[name=?]", "run_stat[unsuccessful_contacts]"
    end
  end
end
