class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :nombre
      t.strubg :category
      t.datatime :hour
      t.datatime :last_time
      t.string :status
      t.string :description
      t.references :tenant

      t.timestamps
    end
    add_index :conferences, :tenant_id
  end
end
