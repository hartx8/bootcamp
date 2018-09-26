class AddAvatarNameToUser < ActiveRecord::Migration[5.2]
 def up
  	add_column :users, :name, :string
  	add_column :users, :avatar, :string
  end

  def down
  	destroy_column :users, :done_tasks
  	destroy_column :users, :avatar
  end
end
