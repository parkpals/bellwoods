class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :latitude
      t.integer :longitude
      t.string :message
      t.string :recipient
      t.integer :profile_id

      t.timestamps null: false
    end
  end
end
