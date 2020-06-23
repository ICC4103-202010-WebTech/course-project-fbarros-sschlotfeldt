class Inbox < ApplicationRecord
  belongs_to :user
  has_many :chats1, :class_name => 'Chat', :foreign_key => 'chat1_id'
  has_many :chats2, :class_name => 'Chat', :foreign_key => 'chat2_id'

  accepts_nested_attributes_for :user
end
