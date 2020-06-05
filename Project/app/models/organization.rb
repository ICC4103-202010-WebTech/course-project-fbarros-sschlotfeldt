class Organization < ApplicationRecord
  belongs_to :user
  has_one :org_homepage
  has_many :organizationMs
  has_many :events

  validates_uniqueness_of :name

  def self.search(search)
    if search
      @organizations = Organization.where("name LIKE ?", "%#{search}%")
      if @organizations
        self.where(id: @organizations)
      else
        @organizations = Organization.all
      end
    else
      @organizations = Organization.all
    end
  end
end
