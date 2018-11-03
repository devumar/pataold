class AddPropertyIdToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :property_id, :integer
  end
end
