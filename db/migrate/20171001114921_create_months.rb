class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.integer :tenant_id
      t.decimal :amount
      t.integer :month
      t.integer :year
      t.integer :field_officer

      t.timestamps null: false
    end
  end
end
