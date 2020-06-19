class Event < ApplicationRecord
  has_one :user, dependent: :nullify
  has_one :organization, dependent: :nullify
  has_one :venue
  has_many :comments, dependent: :destroy
  has_many :eventMs, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :invites, dependent: :destroy
end
