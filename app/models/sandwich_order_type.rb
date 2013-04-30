class SandwichOrderType < ActiveRecord::Base
  attr_accessible :sandwich_type
  belongs_to :sandwich_order
end
