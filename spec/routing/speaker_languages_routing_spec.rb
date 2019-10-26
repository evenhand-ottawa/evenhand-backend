require "rails_helper"

RSpec.describe SpeakerLanguagesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/speakerlanguages").to route_to("speaker_languages#index")
    end

    it "routes to #show" do
      expect(:get => "/speakerlanguages/1").to route_to("speaker_languages#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/speakerlanguages").to route_to("speaker_languages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/speakerlanguages/1").to route_to("speaker_languages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/speakerlanguages/1").to route_to("speaker_languages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/speakerlanguages/1").to route_to("speaker_languages#destroy", :id => "1")
    end
  end
end
