class AddSessionsTable < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :session_id, :null => false
      t.text :data
      t.references :tenant
      t.timestamps
    end

    add_index :sessions, :session_id
    add_index :sessions, :updated_at
    add_index :sessions, :tenant_id

  end
end
