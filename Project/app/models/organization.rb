class Organization < ApplicationRecord
  belongs_to :user
  has_one :org_homepage
  has_many :organizationMs
  has_many :events
end
