class AddName2ToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :last_name, :string 
  end
end
