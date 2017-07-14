class Project < ApplicationRecord
  validates :title, presence: true

  has_many :users, through: :users_projects
  has_many :users_projects
  has_many :columns
end
