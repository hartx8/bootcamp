class ColumnToTask < ActiveRecord::Migration[5.2]
  def change
  	add_column :tasks, :url_to, :string
  end
end
