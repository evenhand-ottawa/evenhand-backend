class AddSpeakerTopicToSpeaker < ActiveRecord::Migration[6.0]
  def change
    add_reference :speakers, :speaker_topic, null: true, foreign_key: true
  end
end
