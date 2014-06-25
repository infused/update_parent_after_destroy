# Supporting code for Stack Overflow answer

http://stackoverflow.com/questions/24413662/how-to-trigger-action-after-many-to-many-association-has-been-destroyed/24415667#24415667

The problem is that the associated allocation is also destroyed when destroying the payment. If you move the invoice updating to the Allocation model instead it will work as intended.

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
