class CreateColumns < ActiveRecord::Migration[5.0]
  def change
    create_table :columns do |t|
      t.string :title
      t.text :description
      t.references :projects, foreign_key: true

      t.timestamps
    end
  end
end
