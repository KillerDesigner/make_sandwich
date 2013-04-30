class CreateSandwichOrderTypes < ActiveRecord::Migration
  def change
    create_table :sandwich_order_types do |t|
      t.string :sandwich_type

      t.timestamps
    end
  end
end
