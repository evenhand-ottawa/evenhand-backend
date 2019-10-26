class RemoveLanguagesFromSpeakers < ActiveRecord::Migration[6.0]
  def change

    remove_column :speakers, :languages, :string
  end
end
