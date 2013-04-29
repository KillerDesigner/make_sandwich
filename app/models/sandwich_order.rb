class SandwichOrder < ActiveRecord::Base
  attr_accessible :sandwich_type
  belongs_to :user
end
