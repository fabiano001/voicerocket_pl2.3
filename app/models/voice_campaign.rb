class VoiceCampaign < ActiveRecord::Base
  belongs_to :user
  has_many :runs
end
