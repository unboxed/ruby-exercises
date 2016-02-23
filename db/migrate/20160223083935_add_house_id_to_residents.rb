class AddHouseIdToResidents < ActiveRecord::Migration
  def change
    add_column :residents, :house_id, :integer
  end
end
