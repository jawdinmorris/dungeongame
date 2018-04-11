class AddEvasionToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :experience
    remove_column :users, :evasion
    remove_column :users, :accuracy
    add_column :users, :evasion, :float
    add_column :users, :accuracy, :float

  end
end
