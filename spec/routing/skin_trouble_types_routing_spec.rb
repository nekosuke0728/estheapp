require "rails_helper"

RSpec.describe SkinTroubleTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/skin_trouble_types").to route_to("skin_trouble_types#index")
    end

    it "routes to #new" do
      expect(:get => "/skin_trouble_types/new").to route_to("skin_trouble_types#new")
    end

    it "routes to #show" do
      expect(:get => "/skin_trouble_types/1").to route_to("skin_trouble_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/skin_trouble_types/1/edit").to route_to("skin_trouble_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/skin_trouble_types").to route_to("skin_trouble_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/skin_trouble_types/1").to route_to("skin_trouble_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/skin_trouble_types/1").to route_to("skin_trouble_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/skin_trouble_types/1").to route_to("skin_trouble_types#destroy", :id => "1")
    end

  end
end
