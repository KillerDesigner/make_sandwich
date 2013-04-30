class SandwichOrder < ActiveRecord::Base
  attr_accessible :sandwich_type
  belongs_to :user
  has_many :sandwich_order_type
end
