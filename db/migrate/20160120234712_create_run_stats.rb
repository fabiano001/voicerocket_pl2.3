class CreateRunStats < ActiveRecord::Migration
  def change
    create_table :run_stats do |t|
      t.references :run, index: true
      t.integer :live_answer
      t.integer :machine_answer
      t.integer :do_not_call
      t.integer :no_answer
      t.integer :carrier_error
      t.integer :busy_signal
      t.float :total_cost
      t.integer :total_called
      t.integer :total_left_to_call
      t.integer :successful_contacts
      t.integer :unsuccessful_contacts

      t.timestamps
    end
  end
end
