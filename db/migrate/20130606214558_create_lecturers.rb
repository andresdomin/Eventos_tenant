class CreateLecturers < ActiveRecord::Migration
  def change
    create_table :lecturers do |t|
      t.string :name
      t.string :last_name
      t.integer :age
      t.string :profile
      t.string :foto
      t.references :tenant

      t.timestamps
    end
    add_index :lecturers, :tenant_id
  end
end
