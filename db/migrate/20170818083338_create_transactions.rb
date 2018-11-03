class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :month
      t.decimal :amount
      t.integer :tenant_id
      t.timestamp :date
      t.string :received_by
      t.string :property_id
      t.string :receipt_no
      t.string :mode
      t.integer :disbursed
      t.date :year
      t.integer :d_id

      t.timestamps null: false
    end
  end
end
