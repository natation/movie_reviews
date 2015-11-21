class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.date :release_date
      t.string :genre
      t.text :overview
      t.string :poster_path

      t.timestamps null: false
    end
  end
end
