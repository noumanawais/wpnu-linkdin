class CreateExpereinces < ActiveRecord::Migration
  def change
    create_table :expereinces do |t|
      t.string :job_title
      t.string :compnay_name
      t.string :zip_code
      t.string :coutry
      t.string :status
      t.references :user

      t.timestamps
    end
    add_index :expereinces, :user_id
  end
end
