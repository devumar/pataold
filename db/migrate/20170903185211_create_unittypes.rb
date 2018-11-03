class CreateUnittypes < ActiveRecord::Migration
  def change
    create_table :unittypes do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
