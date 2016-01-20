require 'rails_helper'

RSpec.describe "contact_transactions/index", type: :view do
  before(:each) do
    assign(:contact_transactions, [
      ContactTransaction.create!(
        :phone_numer => "Phone Numer",
        :genre => "Genre",
        :duration => 1.5,
        :charge => 1.5,
        :run => nil
      ),
      ContactTransaction.create!(
        :phone_numer => "Phone Numer",
        :genre => "Genre",
        :duration => 1.5,
        :charge => 1.5,
        :run => nil
      )
    ])
  end

  it "renders a list of contact_transactions" do
    render
    assert_select "tr>td", :text => "Phone Numer".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
