class CreateAccountsUsersJoinTable < ActiveRecord::Migration
  def up
    create_table :accounts_users, :id => false do |t|
      t.integer :account_id
      t.integer :user_id
    end

    add_index :accounts_users, [:account_id, :user_id]
  end

  def down
    drop_table :accounts_users
  end
end
