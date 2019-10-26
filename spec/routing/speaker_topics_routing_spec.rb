require "rails_helper"

RSpec.describe SpeakerTopicsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/speaker_topics").to route_to("speaker_topics#index")
    end

    it "routes to #show" do
      expect(:get => "/speaker_topics/1").to route_to("speaker_topics#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/speaker_topics").to route_to("speaker_topics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/speaker_topics/1").to route_to("speaker_topics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/speaker_topics/1").to route_to("speaker_topics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/speaker_topics/1").to route_to("speaker_topics#destroy", :id => "1")
    end
  end
end
