class AddStoryToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :story, :string
  end
end
