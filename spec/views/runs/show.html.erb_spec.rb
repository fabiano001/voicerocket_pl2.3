require 'rails_helper'

RSpec.describe "runs/show", type: :view do
  before(:each) do
    @run = assign(:run, Run.create!(
      :status => "Status",
      :contact_list => nil,
      :campaign => nil,
      :voice_campaign => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
