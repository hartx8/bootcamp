class SettingsToTableTask < ActiveRecord::Migration[5.2]
  def change
  	change_column :tasks, :completed, :integer, default: 0
  end
end
