class Event < ApplicationRecord
  belongs_to :user
  has_one :organization
  has_one :venue
  has_many :comments
  has_many :attachments
  has_many :votes
  has_many :event_ms
end
