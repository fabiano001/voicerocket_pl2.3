require 'rails_helper'

RSpec.describe "contact_lists/new", type: :view do
  before(:each) do
    assign(:contact_list, ContactList.new(
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders new contact_list form" do
    render

    assert_select "form[action=?][method=?]", contact_lists_path, "post" do

      assert_select "input#contact_list_name[name=?]", "contact_list[name]"

      assert_select "input#contact_list_user_id[name=?]", "contact_list[user_id]"
    end
  end
end
