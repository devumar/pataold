class CreateLandlords < ActiveRecord::Migration
  def change
    create_table :landlords do |t|
       t.string :fname
    	t.string :oname
    	t.string :postal_address
    	t.string :town
    	t.integer :national_id
    	t.integer :phone
    	t.string :email
    	t.string :status
       t.timestamps null: false
    end
  end
end
