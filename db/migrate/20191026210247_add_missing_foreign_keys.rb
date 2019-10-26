class AddMissingForeignKeys < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :speaker_languages, :speakers
    add_foreign_key :speaker_languages, :languages
  end
end
