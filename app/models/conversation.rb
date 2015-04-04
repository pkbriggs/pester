class Conversation < ActiveRecord::Base
  has_many :messages
  has_one :victim
  belongs_to :user
end
