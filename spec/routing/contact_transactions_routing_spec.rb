require "rails_helper"

RSpec.describe ContactTransactionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contact_transactions").to route_to("contact_transactions#index")
    end

    it "routes to #new" do
      expect(:get => "/contact_transactions/new").to route_to("contact_transactions#new")
    end

    it "routes to #show" do
      expect(:get => "/contact_transactions/1").to route_to("contact_transactions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contact_transactions/1/edit").to route_to("contact_transactions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contact_transactions").to route_to("contact_transactions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contact_transactions/1").to route_to("contact_transactions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contact_transactions/1").to route_to("contact_transactions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contact_transactions/1").to route_to("contact_transactions#destroy", :id => "1")
    end

  end
end
