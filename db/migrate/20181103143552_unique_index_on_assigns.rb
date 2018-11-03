class UniqueIndexOnAssigns < ActiveRecord::Migration
  def change
    add_index :assigns, [:tenant_id, :house_id], unique: true
  end
end
