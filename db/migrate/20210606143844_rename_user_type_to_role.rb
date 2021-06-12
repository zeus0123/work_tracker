class RenameUserTypeToRole < ActiveRecord::Migration[6.1]
  def change
    rename_table :user_types, :roles
  end
end
