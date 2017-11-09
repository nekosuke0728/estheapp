require 'rails_helper'

RSpec.describe AccountsController, type: :controller do

  describe "GET #user_account" do
    it "returns http success" do
      get :user_account
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #staff_account" do
    it "returns http success" do
      get :staff_account
      expect(response).to have_http_status(:success)
    end
  end

end
