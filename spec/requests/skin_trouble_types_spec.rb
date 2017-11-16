require 'rails_helper'

RSpec.describe "SkinTroubleTypes", type: :request do
  describe "GET /skin_trouble_types" do
    it "works! (now write some real specs)" do
      get skin_trouble_types_path
      expect(response).to have_http_status(200)
    end
  end
end
