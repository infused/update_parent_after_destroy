class CreateAllocations < ActiveRecord::Migration
  def change
    create_table :allocations do |t|
      t.integer :invoice_id
      t.integer :payment_id
      t.timestamps
    end
  end
end
