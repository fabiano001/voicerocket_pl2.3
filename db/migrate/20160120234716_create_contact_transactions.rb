class CreateContactTransactions < ActiveRecord::Migration
  def change
    create_table :contact_transactions do |t|
      t.string :phone_numer
      t.string :genre
      t.float :duration
      t.float :charge
      t.references :run, index: true

      t.timestamps
    end
  end
end
