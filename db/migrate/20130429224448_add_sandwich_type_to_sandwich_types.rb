class AddSandwichTypeToSandwichTypes < ActiveRecord::Migration
  def change
    add_column :sandwich_types, :sandwich_type, :string
  end
end
