class RemovePropertiesIdFromAssigns < ActiveRecord::Migration
  def change
    remove_column :assigns, :properties_id

  end
end
