class OrganizationM < ApplicationRecord
  has_many :users
  belongs_to :organization
end
