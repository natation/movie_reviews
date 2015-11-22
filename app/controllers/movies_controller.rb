class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :release_date, :genre, :overview, :poster_path)
  end
end
