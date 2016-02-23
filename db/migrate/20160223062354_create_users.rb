class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.date :date_of_birth
      t.boolean :active

      t.timestamps null: false
    end
  end
end
