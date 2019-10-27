class SpeakerTopicsController < ApplicationController
  before_action :set_speaker_topic, only: [:show, :update, :destroy]

  # GET /speaker_topics
  def index
    @speaker_topics = SpeakerTopic.all

    render json: @speaker_topics
  end

  # GET /speaker_topics/1
  def show
    render json: @speaker_topic
  end

  # POST /speaker_topics
  def create
    @speaker_topic = SpeakerTopic.new(speaker_topic_params)

    if @speaker_topic.save
      render json: @speaker_topic, status: :created, location: @speaker_topic
    else
      render json: @speaker_topic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /speaker_topics/1
  def update
    if @speaker_topic.update(speaker_topic_params)
      render json: @speaker_topic
    else
      render json: @speaker_topic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /speaker_topics/1
  def destroy
    @speaker_topic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speaker_topic
      @speaker_topic = SpeakerTopic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def speaker_topic_params
      params.fetch(:speaker_topic).permit!
    end
end
