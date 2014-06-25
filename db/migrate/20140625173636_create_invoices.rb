class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :total_paid
      t.timestamps
    end
  end
end
