class CreateArrears < ActiveRecord::Migration
  def change
    create_table :arrears do |t|
      t.string :tenant_id
      t.string :integer
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
