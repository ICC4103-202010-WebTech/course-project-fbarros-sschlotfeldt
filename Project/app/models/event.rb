class Event < ApplicationRecord
  belongs_to :user
  has_one :venue
  has_many :attachments, :dependent => :destroy
  has_many :votes, :dependent => :destroy
  has_many :event_ms, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_one :organization
end
