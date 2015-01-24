require 'rails_helper'

RSpec.describe "ChinaTours", :type => :request do
  describe "GET /china_tours" do
    it "works! (now write some real specs)" do
      get china_tours_path
      expect(response).to have_http_status(200)
    end
  end
end
