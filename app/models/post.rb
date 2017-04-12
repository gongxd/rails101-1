class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :content, presence: true
  scpoe :recent, -> { order("craeted_at DESC")}
end
