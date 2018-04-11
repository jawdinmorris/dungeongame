class AddQuestToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :quest_name, :string
    add_column :users, :quest_num, :int
    add_column :users, :quest_complete, :boolean
  end
end
