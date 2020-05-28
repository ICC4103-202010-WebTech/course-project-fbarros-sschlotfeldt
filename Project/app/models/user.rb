class User < ApplicationRecord
  has_many :events
  has_one :organization
  has_one :inbox
  has_many :messages
  has_many :organizationMs
  has_many :eventMs
  has_many :votes
  has_many :comments
  has_one :profilePage
end
