class SandwichOrder < ActiveRecord::Base
  attr_accessible :sandwich_order_type_id
  belongs_to :user
  belongs_to :sandwich_order_type
end
