class CreateComics < ActiveRecord::Migration[6.1]
  def change
    create_table :comics do |t|
      t.string :title
      t.string :publisher
      t.integer :issues
      t.integer :release_date
      t.text :synopsis
      t.string :writer
      t.string :artist
    end
  end
end
