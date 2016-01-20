class AddCreditBalanceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :credit_balance, :float
  end
end
