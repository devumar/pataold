class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :quantity
      t.datetime :available_at
      t.string :tags

      t.timestamps null: false
    end
  end
end
