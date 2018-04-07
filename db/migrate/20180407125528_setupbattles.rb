class Setupbattles < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :id, :users
    add_foreign_key :id, :monsters
  end
end
