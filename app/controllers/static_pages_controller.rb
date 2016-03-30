class StaticPagesController < ApplicationController
  def home
    @new_movies = Movie.all.order(created_at: :desc)
  end
end
