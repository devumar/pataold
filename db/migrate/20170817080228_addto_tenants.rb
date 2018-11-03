class AddtoTenants < ActiveRecord::Migration
  def change
  add_column :tenants, :status, :string
  end
end
