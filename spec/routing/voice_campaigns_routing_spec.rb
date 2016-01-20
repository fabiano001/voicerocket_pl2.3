require "rails_helper"

RSpec.describe VoiceCampaignsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/voice_campaigns").to route_to("voice_campaigns#index")
    end

    it "routes to #new" do
      expect(:get => "/voice_campaigns/new").to route_to("voice_campaigns#new")
    end

    it "routes to #show" do
      expect(:get => "/voice_campaigns/1").to route_to("voice_campaigns#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/voice_campaigns/1/edit").to route_to("voice_campaigns#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/voice_campaigns").to route_to("voice_campaigns#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/voice_campaigns/1").to route_to("voice_campaigns#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/voice_campaigns/1").to route_to("voice_campaigns#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/voice_campaigns/1").to route_to("voice_campaigns#destroy", :id => "1")
    end

  end
end
