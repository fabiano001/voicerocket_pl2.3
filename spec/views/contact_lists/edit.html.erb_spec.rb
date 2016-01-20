require 'rails_helper'

RSpec.describe "contact_lists/edit", type: :view do
  before(:each) do
    @contact_list = assign(:contact_list, ContactList.create!(
      :name => "MyString",
      :user => nil
    ))
  end

  it "renders the edit contact_list form" do
    render

    assert_select "form[action=?][method=?]", contact_list_path(@contact_list), "post" do

      assert_select "input#contact_list_name[name=?]", "contact_list[name]"

      assert_select "input#contact_list_user_id[name=?]", "contact_list[user_id]"
    end
  end
end
