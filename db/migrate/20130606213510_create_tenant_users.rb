class CreateTenantUsers < ActiveRecord::Migration
  def change
    create_table :tenant_users do |t|

      t.timestamps
    end
  end
end
