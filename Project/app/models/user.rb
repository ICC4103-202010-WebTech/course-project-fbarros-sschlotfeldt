class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :events
  has_one :organization
  has_one :inbox
  has_many :messages
  has_many :organizationMs, dependent: :destroy
  has_many :eventMs, through: :events, dependent: :destroy
  has_many :votes, through: :events, dependent: :destroy
  has_many :comments, through: :events, dependent: :destroy
  has_many :invites, through: :events, dependent: :destroy
  has_many :o_invites, through: :organization, dependent: :destroy

  has_one_attached :user_pic, dependent: :destroy

  validates_uniqueness_of :userName
  validates :userName, presence: true
  validates :name, presence: true

  before_create :build_inbox

  devise :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
     unless user
         user = User.create(name: data['name'].split(" ")[0].capitalize,
                            lastName: data['name'].split(" ")[1],
                            userName: data['email'].split("@")[0].capitalize,
                            email: data['email'],
                            user_pic: data['picture'] ,
                            password: Devise.friendly_token[0,20]
         )
     end
    user
  end

  def self.search(search)
    if search
      @users = User.where("userName LIKE ? OR name LIKE ? ", "%#{search}%", "%#{search}%" )
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
