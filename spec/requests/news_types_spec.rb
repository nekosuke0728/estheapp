require 'rails_helper'

RSpec.describe "NewsTypes", type: :request do
  describe "GET /news_types" do
    it "works! (now write some real specs)" do
      get news_types_path
      expect(response).to have_http_status(200)
    end
  end
end
