class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.belongs_to :Movie, null: false, foreign_key: true
      t.belongs_to :List, null: false, foreign_key: true

      t.timestamps
    end
  end
end
