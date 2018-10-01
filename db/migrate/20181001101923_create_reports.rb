class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.column :user_id, :integer
      t.column :text, :string
      t.column :answer, :string
      t.timestamps
    end
  end
end
