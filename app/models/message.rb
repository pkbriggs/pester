class Message < ActiveRecord::Base
  belongs_to :conversation
  # http://stackoverflow.com/questions/17894688/has-many-belongs-to-relation-in-active-record-migration-rails-4
end
