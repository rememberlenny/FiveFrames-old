require 'rails_helper'

RSpec.describe StoryController, :type => :controller do

  describe "GET 'telling'" do
    it "returns http success" do
      get 'telling'
      expect(response).to be_success
    end
  end

end
