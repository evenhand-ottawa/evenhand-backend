class AddSpeakerLanguageToSpeaker < ActiveRecord::Migration[6.0]
  def change
    add_reference :speakers, :speaker_language, null: true, foreign_key: true
  end
end
