class AddNewFieldsToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :unit_name, :string
    add_column :houses, :rent_payable, :string
    add_column :houses, :unit_type, :string
  end
end
