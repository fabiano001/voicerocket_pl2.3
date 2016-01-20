require 'rails_helper'

RSpec.describe "invoices/new", type: :view do
  before(:each) do
    assign(:invoice, Invoice.new(
      :amount => 1,
      :user => nil
    ))
  end

  it "renders new invoice form" do
    render

    assert_select "form[action=?][method=?]", invoices_path, "post" do

      assert_select "input#invoice_amount[name=?]", "invoice[amount]"

      assert_select "input#invoice_user_id[name=?]", "invoice[user_id]"
    end
  end
end
