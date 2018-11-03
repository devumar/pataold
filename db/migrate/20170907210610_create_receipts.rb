class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.integer :month
      t.string :unit_name
      t.integer :property_id
      t.string :receipt_no
      t.string :mode

      t.timestamps null: false
    end
  end
end
