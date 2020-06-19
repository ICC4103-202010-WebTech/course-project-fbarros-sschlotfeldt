class EventM < ApplicationRecord
  has_many :users
  belongs_to :event
end
