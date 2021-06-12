class RenameRoleAndAccountType < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :role_type, :role_id
    rename_column :users, :account_type, :account_type_id
  end
end
