class AddXpToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :xp, :integer
  end
end
