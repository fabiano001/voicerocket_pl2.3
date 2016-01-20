require 'rails_helper'

RSpec.describe "contact_transactions/show", type: :view do
  before(:each) do
    @contact_transaction = assign(:contact_transaction, ContactTransaction.create!(
      :phone_numer => "Phone Numer",
      :genre => "Genre",
      :duration => 1.5,
      :charge => 1.5,
      :run => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Phone Numer/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end
