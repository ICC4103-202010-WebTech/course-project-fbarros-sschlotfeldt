class Organization < ApplicationRecord
  belongs_to :user
  has_many :events, :dependent => :destroy
  has_one :org_homepage, :dependent => :destroy
  has_many :organization_ms, :dependent => :destroy
end