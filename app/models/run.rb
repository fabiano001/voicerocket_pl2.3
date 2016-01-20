class Run < ActiveRecord::Base
  belongs_to :contact_list
  belongs_to :campaign
  belongs_to :voice_campaign
end
