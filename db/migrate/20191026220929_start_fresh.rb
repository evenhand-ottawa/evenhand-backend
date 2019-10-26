class StartFresh < ActiveRecord::Migration[6.0]
    def change

        create_table :topics do |t|
            t.string :name

            t.timestamps
        end


        create_table :speakers do |t|
            t.string :pronouns
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

        create_table :users do |t|
            t.string :first_name
            t.string :last_name
            t.string :email
            t.string :password
            t.references :speaker, null: true, foreign_key: true
      
            t.timestamps
        end

        create_table :speaker_topics do |t|
            t.references :topic, null: false, foreign_key: true
            t.references :speaker, null: false, foreign_key: true
      
            t.timestamps
        end

        create_table :languages do |t|
            t.string :name
      
            t.timestamps
       
        end

        create_table :speaker_languages do |t|
            t.references :speaker, null: false, foreign_key: true
            t.references :language, null: false, foreign_key: true
      
            t.timestamps
          end

    end
end
