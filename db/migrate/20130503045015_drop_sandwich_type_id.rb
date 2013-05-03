class DropSandwichTypeId < ActiveRecord::Migration
  def change
  	remove_column :users, :sandwich_type_id 
  end
end
