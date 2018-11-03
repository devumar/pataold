class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :accountname
      t.string :type
      t.decimal :defaultamount

      t.timestamps null: false
    end
  end
end
