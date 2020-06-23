class Event < ApplicationRecord
  has_one :user, dependent: :nullify
  has_one :organization, dependent: :nullify
  has_one :venue
  has_many :comments, dependent: :destroy
  has_many :eventMs, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :invites, dependent: :destroy

  validates_presence_of :e_name

  has_one_attached :event_pic, dependent: :destroy
  has_one_attached :ad, dependent: :destroy
  has_many_attached :photos, dependent: :destroy
  has_many_attached :files, dependent: :destroy
  has_many_attached :videos, dependent: :destroy

  accepts_nested_attributes_for :venue


  def self.search(search)
    if search
      begin
        @events = Event.joins("LEFT JOIN users ON events.user_id = users.id").where("e_name LIKE ? OR e_description LIKE ? OR userName LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
      rescue
        @events = Event.joins("LEFT JOIN organizations ON events.organization_id = organizations.id").where("e_name LIKE ? OR e_description LIKE ? OR o_name LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
      rescue
        @events = Event.all
      end
      if @events
        self.where(id: @events)
      else
        @events = Event.all
      end
    else
      @events = Event.all
    end
  end
end
