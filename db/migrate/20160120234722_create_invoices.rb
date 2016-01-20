class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :amount
      t.references :user, index: true

      t.timestamps
    end
  end
end
