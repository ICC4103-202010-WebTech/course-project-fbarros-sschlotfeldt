class OrgHomepage < ApplicationRecord
  belongs_to :organization
  accepts_nested_attributes_for :organization

  has_one_attached :flyer
end
