require "rails_helper"

RSpec.describe EstheMenusController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/esthe_menus").to route_to("esthe_menus#index")
    end

    it "routes to #new" do
      expect(:get => "/esthe_menus/new").to route_to("esthe_menus#new")
    end

    it "routes to #show" do
      expect(:get => "/esthe_menus/1").to route_to("esthe_menus#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/esthe_menus/1/edit").to route_to("esthe_menus#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/esthe_menus").to route_to("esthe_menus#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/esthe_menus/1").to route_to("esthe_menus#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/esthe_menus/1").to route_to("esthe_menus#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/esthe_menus/1").to route_to("esthe_menus#destroy", :id => "1")
    end

  end
end
