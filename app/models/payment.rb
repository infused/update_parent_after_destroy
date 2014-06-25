class Payment < ActiveRecord::Base
  has_many :allocations, :dependent => :destroy
  has_many :invoices, :through => :allocations


end
