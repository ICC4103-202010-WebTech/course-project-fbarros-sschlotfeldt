class Venue < ApplicationRecord
  has_one :event, dependent: :destroy
end
