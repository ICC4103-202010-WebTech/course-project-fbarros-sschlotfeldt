class Event < ApplicationRecord
  belongs_to :user
  has_one :organization
  has_one :venue
  has_many :comments
  has_many :eventMs
  has_many :votes

  has_one_attached :event_pic
  has_one_attached :ad

  accepts_nested_attributes_for :venue


  def self.search(search)
    if search
      @events = Event.joins(user: :organization).where("title LIKE ? OR description LIKE ? OR name LIKE ? OR userName LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
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
