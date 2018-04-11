class AddMorestatsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :accuracy, :integer
    add_column :users, :evasion, :integer
  end
end
