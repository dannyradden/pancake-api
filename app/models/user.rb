class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates_uniqueness_of :username, case_sensitive: false

  has_many :projects, through: :users_projects
  has_many :users_projects

end
