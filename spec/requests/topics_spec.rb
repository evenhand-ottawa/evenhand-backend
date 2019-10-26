require 'rails_helper'

RSpec.describe "Topics", type: :request do
  let!(:topics) { create_list(:topic, 10) }
  let(:topic_id) { topics.first.id }

  describe "GET /topics" do
    before { get topics_path }

    it "returns OK" do
      expect(response).to have_http_status(200)
    end

  end
end
