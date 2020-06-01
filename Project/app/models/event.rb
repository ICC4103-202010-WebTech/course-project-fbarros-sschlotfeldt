class Event < ApplicationRecord
  belongs_to :user
  has_one :organization
  has_one :venue
  has_many :comments
  has_many :eventMs
  has_many :votes

  def self.search(search)
    if search
      @events = Event.where("title LIKE ?", "%#{search}%")
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
