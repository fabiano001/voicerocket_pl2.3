class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.string :status
      t.datetime :launch
      t.references :contact_list, index: true
      t.references :campaign, index: true
      t.references :voice_campaign, index: true

      t.timestamps
    end
  end
end
