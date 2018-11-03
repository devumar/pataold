class CreateAssigns < ActiveRecord::Migration
  def change
    create_table :assigns do |t|
      t.integer :tenant_id
      t.integer :houses_id
      t.string :properties_id

      t.timestamps null: false
    end
  end
end
