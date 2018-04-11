class AddGearToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sword, :integer
    add_column :users, :spellbook, :integer
    add_column :users, :helmet, :integer
    add_column :users, :shoulders, :integer
    add_column :users, :gloves, :integer
    add_column :users, :chest, :integer
    add_column :users, :legs, :integer
    add_column :users, :boots, :integer
  end
end
