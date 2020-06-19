class Organization < ApplicationRecord
  belongs_to :user
  has_many :organizationMs, dependent: :destroy
  has_many :events, dependent: :destroy

  validates_uniqueness_of :o_name

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

