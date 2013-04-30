class DropSandwichTypesTable < ActiveRecord::Migration
  def up
  	drop_table :sandwich_types
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
