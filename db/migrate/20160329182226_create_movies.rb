class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :story

      t.timestamps null: false
      t.index [:user_id, :created_at]
    end
  end
end
