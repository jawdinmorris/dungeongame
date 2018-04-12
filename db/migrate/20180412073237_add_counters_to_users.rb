class AddCountersToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :loss_counter, :integer
    add_column :users, :win_counter, :integer
    add_column :users, :quest_counter, :integer
  end
end
