class AddSpeakerLanguageToSpeaker < ActiveRecord::Migration[6.0]
  def change
    add_column :speakers, :speaker_language, :integer
    add_reference :speakers, :speaker_language, null: true, foreign_key: true
  end
end
