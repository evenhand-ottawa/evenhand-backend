require "rails_helper"

RSpec.describe UsersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/models").to route_to("users#index")
    end

    it "routes to #show" do
      expect(:get => "/models/1").to route_to("users#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/models").to route_to("users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/models/1").to route_to("users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/models/1").to route_to("users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/models/1").to route_to("users#destroy", :id => "1")
    end
  end
end
