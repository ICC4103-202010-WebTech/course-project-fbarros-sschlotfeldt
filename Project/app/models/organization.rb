class Organization < ApplicationRecord
  belongs_to :user
  has_one :org_homepage
  has_many :organizationMs
  has_many :events

  validates_uniqueness_of :name, :case_sensitive => false

  def self.search(search)
    if search
      @organizations = Organization.find_by("LOWER(name) = ?", search.downcase)
      if @organizations
        self.where(id: @organizations)
      else
        @organizations = Organization.joins(:org_homepage)
      end
    else
      @organizations = Organization.joins(:org_homepage)
    end
  end
end
