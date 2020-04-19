class Organization < ApplicationRecord
  has_one :user
  has_many :events
  has_many :organization_ms
  has_one :org_homepage
end
