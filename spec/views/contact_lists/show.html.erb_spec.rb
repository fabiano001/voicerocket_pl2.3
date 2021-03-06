require 'rails_helper'

RSpec.describe "contact_lists/show", type: :view do
  before(:each) do
    @contact_list = assign(:contact_list, ContactList.create!(
      :name => "Name",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
