class Event < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :organization, optional: true
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
        @events = Event.joins("LEFT JOIN users ON events.user_id = users.id").where("visibility = ? AND (e_name LIKE ? OR e_description LIKE ? OR userName LIKE ?)", true, "%#{search}%", "%#{search}%", "%#{search}%")
      if @events == []
        @events = Event.joins("LEFT JOIN organizations ON events.organization_id = organizations.id").where("visibility = ? AND (o_name LIKE ?)", true, "%#{search}%")
      elsif @events
        self.where(id: @events)
      else
        @events = Event.where("visibility = ?", true)
      end
    else
      @events = Event.where("visibility = ?", true)
    end
  end

  def self.search2(search2)
    if search2
      @events = Event.joins("LEFT JOIN users ON events.user_id = users.id").where("e_name LIKE ? OR e_description LIKE ? OR userName LIKE ?", "%#{search2}%", "%#{search2}%", "%#{search2}%")
      if @events == []
        @events = Event.joins("LEFT JOIN organizations ON events.organization_id = organizations.id").where("o_name LIKE ?", "%#{search2}%")
      elsif @events
        self.where(id: @events)
      else
        @events = Event.all
      end
    else
      @events = Event.all
    end
  end
end
