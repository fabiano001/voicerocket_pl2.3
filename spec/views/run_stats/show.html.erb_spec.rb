require 'rails_helper'

RSpec.describe "run_stats/show", type: :view do
  before(:each) do
    @run_stat = assign(:run_stat, RunStat.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
  end
end
