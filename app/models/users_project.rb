class UsersProject < ApplicationRecord
  belongs_to :users
  belongs_to :projects
end
