class Tag < ApplicationRecord
  has_many :cards, through: :card_tags
  has_many :card_tags
end
