class OrgHomepage < ApplicationRecord
  belongs_to :organization
  accepts_nested_attributes_for :organization
end
