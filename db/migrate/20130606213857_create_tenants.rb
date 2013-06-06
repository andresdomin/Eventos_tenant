class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :founder
      t.timestamps
    end
  end
end
