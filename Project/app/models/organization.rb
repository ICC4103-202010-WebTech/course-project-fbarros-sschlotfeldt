class Organization < ApplicationRecord
  belongs_to :user
  has_many :events
  has_one :org_homepage
  has_many :organization_ms
end