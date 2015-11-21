class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :email, null: false
      t.date :date, null: false
      t.integer :rating, null: false
      t.text :comment
      t.integer :movie_id, null: false

      t.timestamps null: false
    end

    add_index :reviews, :movie_id
  end
end
