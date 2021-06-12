class RenameActionTypeToAccountType < ActiveRecord::Migration[6.1]
  def change
    rename_table :action_types, :account_types
  end
end
