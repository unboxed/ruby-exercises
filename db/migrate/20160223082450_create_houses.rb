class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.date :date_built
      t.string :address
      t.string :city
      t.boolean :active

      t.timestamps null: false
    end
  end
end
