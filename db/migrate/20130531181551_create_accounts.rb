class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.references :accounttype
      t.decimal :balance, :precision => 8, :scale => 2

      t.timestamps
    end
    add_index :accounts, :accounttype_id
  end
end
