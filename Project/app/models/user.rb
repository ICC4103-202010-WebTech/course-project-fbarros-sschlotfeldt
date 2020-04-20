class User < ApplicationRecord
  has_one :organization
  has_many :organization_ms
  has_one :profile_page
  has_many :votes
  has_many :event_ms
  has_many :events
  has_many :comments
end
