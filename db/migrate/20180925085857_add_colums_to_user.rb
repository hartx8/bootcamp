class AddColumsToUser < ActiveRecord::Migration[5.2]
  def up
  	add_column :users, :done_tasks, :integer, default: 0
  	add_column :users, :balance, :integer, default: 0

  end

  def down
  	destroy_column :users, :done_tasks
  	destroy_column :users, :balance
  end
end
