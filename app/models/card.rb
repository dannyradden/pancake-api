class Card < ApplicationRecord
  belongs_to :columns
  has_many :comments
  has_many :tags, through: :card_tags
  has_many :card_tags
end
