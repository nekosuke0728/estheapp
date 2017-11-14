require 'rails_helper'

RSpec.describe "Orderproducts", type: :request do
  describe "GET /orderproducts" do
    it "works! (now write some real specs)" do
      get orderproducts_path
      expect(response).to have_http_status(200)
    end
  end
end
