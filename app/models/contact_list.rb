class ContactList < ActiveRecord::Base
  belongs_to :user
  has_many :runs
end
