class CreateUsersProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :users_projects do |t|
      t.references :users, foreign_key: true
      t.references :projects, foreign_key: true

      t.timestamps
    end
  end
end
