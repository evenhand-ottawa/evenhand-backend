class CreateSpeakers < ActiveRecord::Migration[6.0]
  def change
    create_table :speakers do |t|
      t.string :pronouns
      t.string :languages
      t.string :location
      t.boolean :will_travel
      t.string :occupation
      t.string :tagline
      t.string :image
      t.string :video
      t.string :instagram
      t.string :twitter
      t.string :linkedin
      t.string :website
      t.text :biography

      t.timestamps
    end
  end
end
