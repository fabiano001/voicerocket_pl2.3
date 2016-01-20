require 'rails_helper'

RSpec.describe "campaigns/show", type: :view do
  before(:each) do
    @campaign = assign(:campaign, Campaign.create!(
      :name => "Name",
      :genre => "Genre",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(//)
  end
end
