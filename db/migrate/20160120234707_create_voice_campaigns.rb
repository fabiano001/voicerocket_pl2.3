class CreateVoiceCampaigns < ActiveRecord::Migration
  def change
    create_table :voice_campaigns do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
