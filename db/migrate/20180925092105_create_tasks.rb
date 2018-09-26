class CreateTasks < ActiveRecord::Migration[5.2]
  def up
    create_table :tasks do |t|
      t.string :description, null: false
      t.string :type, null: false
      t.integer :goal
      t.integer :completed
      t.boolean :status, default: true 
      t.belongs_to :user
      t.timestamps
    end
  end

  def down
  	drop_table :tasks
  end
end
