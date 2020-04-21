class User < ApplicationRecord
  has_one :organization, :dependent => :destroy
  has_many :organization_ms, :dependent => :destroy
  has_one :profile_page, :dependent => :destroy
  has_many :votes, :dependent => :destroy
  has_many :event_ms, :dependent => :destroy
  has_many :events, :dependent => :destroy
  has_many :comments, :dependent => :destroy


  validates :userName, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

end
