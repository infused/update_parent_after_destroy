class Allocation < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :payment

  after_destroy :update_invoice

  def update_invoice
    if destroyed?
      invoice.save!
    end
  end
end
