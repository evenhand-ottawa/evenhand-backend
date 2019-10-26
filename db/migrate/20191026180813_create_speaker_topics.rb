class CreateSpeakerTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :speaker_topics do |t|
      t.references :topic, null: false, foreign_key: true
      t.references :speaker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
