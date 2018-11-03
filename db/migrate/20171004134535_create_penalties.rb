class CreatePenalties < ActiveRecord::Migration
  def change
    create_table :penalties do |t|
      t.integer :tenant_id
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
