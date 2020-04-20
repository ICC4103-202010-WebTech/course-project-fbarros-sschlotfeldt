class Attachment < ApplicationRecord
  belongs_to :comment
  belongs_to :event
  belongs_to :orgHomepage
end
