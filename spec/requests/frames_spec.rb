require 'rails_helper'

RSpec.describe "Frames", :type => :request do
  describe "GET /frames" do
    it "works! (now write some real specs)" do
      get frames_path
      expect(response.status).to be(200)
    end
  end
end
