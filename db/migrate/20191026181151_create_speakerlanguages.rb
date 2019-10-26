class CreateSpeakerlanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :speaker_languages do |t|
      t.references :speaker
      t.references :language

      t.timestamps
    end
  end
end
