class SandwichType < ActiveRecord::Base
  attr_accessible :type_meaty, :type_raw, :type_vegan, :type_vegetarian
end
