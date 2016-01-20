require 'rails_helper'

RSpec.describe "contact_lists/index", type: :view do
  before(:each) do
    assign(:contact_lists, [
      ContactList.create!(
        :name => "Name",
        :user => nil
      ),
      ContactList.create!(
        :name => "Name",
        :user => nil
      )
    ])
  end

  it "renders a list of contact_lists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
