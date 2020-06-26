class Inbox < ApplicationRecord
  belongs_to :user
  has_many :chats, :class_name => 'Chat', :foreign_key => 'inbox1_id'
  has_many :chats, :class_name => 'Chat', :foreign_key => 'inbox2_id'
  accepts_nested_attributes_for :user
end
