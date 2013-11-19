class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :user
      t.integer :friend_id

      t.timestamps
    end
    add_index :contacts, :user_id
  end
end
