class CreateCardsTags < ActiveRecord::Migration[5.0]
  def change
    create_table :cards_tags do |t|
      t.references :cards, foreign_key: true
      t.references :tags, foreign_key: true

      t.timestamps
    end
  end
end
