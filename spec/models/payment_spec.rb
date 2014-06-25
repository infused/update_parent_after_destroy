require 'rails_helper'

RSpec.describe Payment, :type => :model do
  describe 'after create' do
    let!(:invoice) { Invoice.create! }
    let!(:payment1) { invoice.payments.create! :amount => 100 }
    let!(:payment2) { invoice.payments.create! :amount => 100 }

    before do
      payment1.destroy
      invoice.reload
    end

    it 'updates invoice total_paid' do
      expect(invoice.total_paid).to eq 100
    end
  end
end
