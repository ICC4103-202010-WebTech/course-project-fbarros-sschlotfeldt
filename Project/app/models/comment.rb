class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates_presence_of :user

  has_one_attached :atta
end
