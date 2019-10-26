class AddUserIdReferenceToSpeakers < ActiveRecord::Migration[6.0]
  def change

    add_reference :speakers, :user, index: true, null: false

  end
end
