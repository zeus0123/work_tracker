class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :mobile_number
      t.string :password_digest
      t.integer :role_type
      t.integer :account_type

      t.timestamps
    end
  end
end
