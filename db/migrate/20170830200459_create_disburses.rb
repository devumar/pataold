class CreateDisburses < ActiveRecord::Migration
  def change
    create_table :disburses do |t|
      t.integer :property_id
      t.integer :month
      t.date :year
      t.decimal :amount
      t.string :paid_by
      t.string :mode

      t.timestamps null: false
    end
  end
end
