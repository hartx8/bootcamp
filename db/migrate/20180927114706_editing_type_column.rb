class EditingTypeColumn < ActiveRecord::Migration[5.2]
  def change
	remove_column :tasks, :type
	add_column :tasks, :type, :integer
  end
end
