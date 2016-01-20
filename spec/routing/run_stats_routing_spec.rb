require "rails_helper"

RSpec.describe RunStatsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/run_stats").to route_to("run_stats#index")
    end

    it "routes to #new" do
      expect(:get => "/run_stats/new").to route_to("run_stats#new")
    end

    it "routes to #show" do
      expect(:get => "/run_stats/1").to route_to("run_stats#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/run_stats/1/edit").to route_to("run_stats#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/run_stats").to route_to("run_stats#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/run_stats/1").to route_to("run_stats#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/run_stats/1").to route_to("run_stats#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/run_stats/1").to route_to("run_stats#destroy", :id => "1")
    end

  end
end
