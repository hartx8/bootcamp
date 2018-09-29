class TaskSetup < ActiveRecord::Migration[5.2]
  def change
  	create_table(:tasks) do |t|
      t.column :description, :string, limit: 60, null: false
      t.column :task_type, :integer, null: false
      t.column :goal, :integer, null: false
      t.column :completed, :integer, default: 0
      t.column :amount, :decimal, null: false
      t.column :status, :integer, default: 0
      t.column :user_id, :integer, null: false
      t.column :task_url, :string, null: false
      t.timestamps
	end
  end
end
