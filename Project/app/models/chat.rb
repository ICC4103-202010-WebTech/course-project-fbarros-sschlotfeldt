class Chat < ApplicationRecord
  belongs_to :inbox1, :class_name => 'Inbox'
  belongs_to :inbox2, :class_name => 'Inbox'
  has_many :messages, dependent: :destroy
end
