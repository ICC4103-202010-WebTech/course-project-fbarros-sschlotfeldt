class OrgHomepage < ApplicationRecord
  belongs_to :organization
  has_many :attachments
end
