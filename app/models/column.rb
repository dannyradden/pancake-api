class Column < ApplicationRecord
  belongs_to :projects
  has_many :cards
end
