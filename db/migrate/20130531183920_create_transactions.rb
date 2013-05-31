class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :account
      t.date :date
      t.decimal :amount
      t.string :description, precision:8, scale:2

      t.timestamps
    end
    add_index :transactions, :account_id
  end
end
