class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.string :user
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :speaker_id

      t.timestamps
    end
  end
end
