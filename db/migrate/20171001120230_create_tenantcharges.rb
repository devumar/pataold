class CreateTenantcharges < ActiveRecord::Migration
  def change
    create_table :tenantcharges do |t|
      t.decimal :amount
      t.string :bank_acc
      t.string :bank
      t.string :cheque
      t.integer :account
      t.string :property_id
      t.string :mode
      t.integer :tenant_id
      t.string :receipt_no

      t.timestamps null: false
    end
  end
end
