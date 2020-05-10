class Organization < ApplicationRecord
  belongs_to :user
  has_one :orgHomepage
  has_many :organizationMs
  has_many :events
end
