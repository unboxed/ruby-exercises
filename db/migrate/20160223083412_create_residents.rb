class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string :full_name
      t.date :date_of_birth
      t.string :id_number
      t.integer :room_number

      t.timestamps null: false
    end
  end
end
