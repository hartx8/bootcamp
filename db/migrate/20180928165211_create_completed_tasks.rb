class CreateCompletedTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_tasks do |t|
      t.timestamps
      t.integer :user, null: false
      t.integer :task, null: false
      t.boolean :paid, default: false
    end
  end
end
