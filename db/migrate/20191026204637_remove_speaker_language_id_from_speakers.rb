class RemoveSpeakerLanguageIdFromSpeakers < ActiveRecord::Migration[6.0]
  def change
    remove_column :speakers, :speaker_language_id, :integer
    remove_column :speakers, :speaker_topic_id, :integer
  end
end
