class AddTypeToSandwichOrders < ActiveRecord::Migration
  def change
    add_column :sandwich_orders, :order_type, :string
  end
end
