class AddSandwichTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sandwich_type_id, :integer
  end
end
