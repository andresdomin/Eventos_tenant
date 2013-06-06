class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :nombre
      t.string :description
      t.float :longitude
      t.float :latitude
      t.references :tenant

      t.timestamps
    end
    add_index :rooms, :tenant_id
  end
end
