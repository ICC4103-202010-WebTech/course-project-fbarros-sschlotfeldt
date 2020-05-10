class OrganizationM < ApplicationRecord
  has_many :user
  belongs_to :organization
end
