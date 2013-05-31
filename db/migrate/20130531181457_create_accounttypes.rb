class CreateAccounttypes < ActiveRecord::Migration
  def change
    create_table :accounttypes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
