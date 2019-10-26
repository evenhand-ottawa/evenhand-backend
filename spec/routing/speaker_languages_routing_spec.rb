require "rails_helper"

RSpec.describe SpeakerLanguagesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/speaker_languages").to route_to("speaker_languages#index")
    end

    it "routes to #show" do
      expect(:get => "/speaker_languages/1").to route_to("speaker_languages#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/speaker_languages").to route_to("speaker_languages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/speaker_languages/1").to route_to("speaker_languages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/speaker_languages/1").to route_to("speaker_languages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/speaker_languages/1").to route_to("speaker_languages#destroy", :id => "1")
    end
  end
end
