class Allocation < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :payment
end
