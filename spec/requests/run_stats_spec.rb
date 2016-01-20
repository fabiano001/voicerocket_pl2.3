require 'rails_helper'

RSpec.describe "RunStats", type: :request do
  describe "GET /run_stats" do
    it "works! (now write some real specs)" do
      get run_stats_path
      expect(response).to have_http_status(200)
    end
  end
end
