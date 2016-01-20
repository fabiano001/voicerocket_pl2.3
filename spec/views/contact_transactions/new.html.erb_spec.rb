require 'rails_helper'

RSpec.describe "contact_transactions/new", type: :view do
  before(:each) do
    assign(:contact_transaction, ContactTransaction.new(
      :phone_numer => "MyString",
      :genre => "MyString",
      :duration => 1.5,
      :charge => 1.5,
      :run => nil
    ))
  end

  it "renders new contact_transaction form" do
    render

    assert_select "form[action=?][method=?]", contact_transactions_path, "post" do

      assert_select "input#contact_transaction_phone_numer[name=?]", "contact_transaction[phone_numer]"

      assert_select "input#contact_transaction_genre[name=?]", "contact_transaction[genre]"

      assert_select "input#contact_transaction_duration[name=?]", "contact_transaction[duration]"

      assert_select "input#contact_transaction_charge[name=?]", "contact_transaction[charge]"

      assert_select "input#contact_transaction_run_id[name=?]", "contact_transaction[run_id]"
    end
  end
end
