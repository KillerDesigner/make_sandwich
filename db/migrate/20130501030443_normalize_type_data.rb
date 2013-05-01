class NormalizeTypeData < ActiveRecord::Migration
  def change
  	remove_column :sandwich_orders, :sandwich_type
    remove_column :sandwich_orders, :order_type
    add_column :sandwich_orders, :sandwich_order_type_id, :integer
  end
end
