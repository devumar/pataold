class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.string :town
      t.integer :phone
      t.integer :national_id

      t.timestamps null: false
    end
  end
end
