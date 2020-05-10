class Event < ApplicationRecord
  belongs_to :user
  has_one :organization
  has_one :venue
  has_many :comments
  has_many :eventMs
  has_many :votes
end
