class Event < ApplicationRecord
  belongs_to :user
  has_one :venue
  has_many :attachments
  has_many :votes
  has_many :event_ms
  has_many :comments
  has_one :organization
end
