class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.decimal :amount
      t.integer :month
      t.integer :account
      t.integer :property_id
      t.string :mode
      t.integer :tenant_id
      t.string :receipt

      t.timestamps null: false
    end
  end
end
