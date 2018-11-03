class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :names
      t.string :plot_no
      t.string :unit_no
      t.decimal :amount
      t.string :receipt

      t.timestamps null: false
    end
  end
end
