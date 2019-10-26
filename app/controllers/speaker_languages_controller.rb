class SpeakerLanguagesController < ApplicationController
  before_action :set_speaker_language, only: [:show, :update, :destroy]

  # GET /speaker_languages
  def index
    @speaker_languages = SpeakerLanguage.all

    render json: @speaker_languages
  end

  # GET /speaker_languages/1
  def show
    render json: @speaker_language
  end

  # POST /speaker_languages
  def create
    @speaker_language = SpeakerLanguage.new(speaker_language_params)

    if @speaker_language.save
      render json: @speaker_language, status: :created, location: @speaker_language
    else
      render json: @speaker_language.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /speaker_languages/1
  def update
    if @speaker_language.update(speaker_language_params)
      render json: @speaker_language
    else
      render json: @speaker_language.errors, status: :unprocessable_entity
    end
  end

  # DELETE /speaker_languages/1
  def destroy
    @speaker_language.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speaker_language
      @speaker_language = SpeakerLanguage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def speaker_language_params
      params.require(:speaker_language).permit(:speaker, :language)
    end
end
