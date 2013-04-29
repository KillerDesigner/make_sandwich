class CreateSandwichTypes < ActiveRecord::Migration
  def change
    create_table :sandwich_types do |t|
      t.string :type_meaty
      t.string :type_vegetarian
      t.string :type_vegan
      t.string :type_raw

      t.timestamps
    end
  end
end
