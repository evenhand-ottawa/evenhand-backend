require 'rails_helper'

RSpec.describe "SpeakerTopics", type: :request do
  describe "GET /speaker_topics" do
    it "works! (now write some real specs)" do
      get speaker_topics_path
      expect(response).to have_http_status(200)
    end
  end
end
