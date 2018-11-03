class RenameHousesIdToHouseId < ActiveRecord::Migration
  def change
        rename_column :assigns, :houses_id, :house_id
  end
end
