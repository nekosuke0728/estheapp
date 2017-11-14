require "rails_helper"

RSpec.describe OrderproductsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/orderproducts").to route_to("orderproducts#index")
    end

    it "routes to #new" do
      expect(:get => "/orderproducts/new").to route_to("orderproducts#new")
    end

    it "routes to #show" do
      expect(:get => "/orderproducts/1").to route_to("orderproducts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/orderproducts/1/edit").to route_to("orderproducts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/orderproducts").to route_to("orderproducts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/orderproducts/1").to route_to("orderproducts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/orderproducts/1").to route_to("orderproducts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/orderproducts/1").to route_to("orderproducts#destroy", :id => "1")
    end

  end
end
