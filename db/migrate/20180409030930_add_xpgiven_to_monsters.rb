class AddXpgivenToMonsters < ActiveRecord::Migration[5.1]
  def change
    add_column :monsters, :xp_given, :integer
  end
end
