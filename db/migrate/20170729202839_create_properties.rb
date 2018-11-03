class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :estate
      t.string :plot_no
      t.integer :units_on_plot
      t.integer :field_officer
      t.integer :landlord_id
      t.string :plot_name
      t.string :town
      t.integer :commission

      t.timestamps null: false
    end
  end
end
