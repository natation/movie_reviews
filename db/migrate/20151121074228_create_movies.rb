class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.date :release_date, null: false
      t.string :genre, null: false
      t.text :overview, null: false
      t.string :poster_path, null: false

      t.timestamps null: false
    end
  end
end
