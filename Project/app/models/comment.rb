class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :attachments

  has_one_attached :atta
end
