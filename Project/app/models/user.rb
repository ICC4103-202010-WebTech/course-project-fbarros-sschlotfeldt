class User < ApplicationRecord
  has_many :events, dependent: :destroy
  has_one :organization
  has_one :inbox, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :organizationMs, dependent: :destroy
  has_many :eventMs, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :invites, dependent: :destroy
end
