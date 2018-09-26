class AddingRoleToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :role, :integer, default: 'user'
  end
end
