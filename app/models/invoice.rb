class Invoice < ActiveRecord::Base
  has_many :allocations
  has_many :payments, :through => :allocations

  before_save :update_amounts

  def update_amounts
    puts payments.sum(:amount)
    self.total_paid = payments.sum(:amount)
  end
end
