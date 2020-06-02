class User < ApplicationRecord
  has_many :events
  has_one :organization
  has_one :inbox
  has_many :messages
  has_many :organizationMs
  has_many :eventMs
  has_many :votes
  has_many :comments
  has_one :profilePage

  def self.search(search)
    if search
      @users = User.joins(:profilePage).where("userName LIKE ? OR name LIKE ?", "%#{search}%", "%#{search}%" )
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