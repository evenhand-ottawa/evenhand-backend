class RemoveSpeakerLanguageFromSpeakers < ActiveRecord::Migration[6.0]
  def change

    remove_column :speakers, :speaker_language, :string
  end
end
