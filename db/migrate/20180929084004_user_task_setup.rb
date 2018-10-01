class UserTaskSetup < ActiveRecord::Migration[5.2]
  def change
  	create_table(:user_tasks) do |t|
      t.column :task_id, :integer
      t.column :user_id, :integer
      t.column :status, :integer, default: 0
	end
  end
end
