class User < ApplicationRecord
  has_many :events, dependent: :destroy
  has_one :organization
  has_one :inbox, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :organizationMs, dependent: :destroy
  has_many :eventMs, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one :profilePage, dependent: :destroy
  has_many :invites, dependent: :destroy

  validates_uniqueness_of :userName


  def self.search(search)
    if search
      @users = User.joins(:profilePage).where("userName LIKE ? OR name LIKE ? OR lastName LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%" )
      if @users
        self.where(id: @users)
      else
        @users = User.joins(:profilePage)
      end
    else
      @users = User.joins(:profilePage)
    end
  end

end