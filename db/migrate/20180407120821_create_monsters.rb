class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :description
      t.integer :level
      t.integer :attack
      t.integer :defence
      t.integer :health

      t.timestamps
    end
  end
end
