class Invoice < ActiveRecord::Base
  has_many :allocations
  has_many :payments, :through => :allocations
end
