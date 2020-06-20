class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, dependent: :destroy
  has_one :organization
  has_one :inbox, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :organizationMs, dependent: :destroy
  has_many :eventMs, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :invites, dependent: :destroy

  has_one_attached :user_pic

  validates_uniqueness_of :userName


  def self.search(search)
    if search
      @users = User.where("userName LIKE ? OR name LIKE ? OR lastName LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%" )
      if @users
        self.where(id: @users)
      else
        @users = User.all
      end
    else
      @users = User.all
    end
  end
end
