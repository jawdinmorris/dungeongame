class AddGoldgivenToMonsters < ActiveRecord::Migration[5.1]
  def change
    add_column :monsters, :gold_given, :integer
  end
end
