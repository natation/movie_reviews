class Api::MoviesController < ApplicationController
  def index
    # Movie.destroy_all
    movie_resp = Unirest.get "https://api.themoviedb.org/3/movie/now_playing?api_key=#{ENV['movie_db']}"
    genre_resp = Unirest.get "https://api.themoviedb.org/3/genre/movie/list?api_key=#{ENV['movie_db']}"
    unless movie_resp.body.empty? || genre_resp.body.empty?
      movie_info = movie_resp.body["results"]
      genre_info = genre_resp.body["genres"]
      genres = {}
      genre_info.each do |genre_hash|
        genres[genre_hash["id"]] = genre_hash["name"]
      end
      movie_info.each do |movie|
        genre_id = movie["genre_ids"].first
        genre = genres[genre_id]
        movie_attr = {title: movie["title"], release_date: movie["release_date"],
                      genre: genre, overview: movie["overview"],
                      poster_path: movie["poster_path"]}
        movie = Movie.new(movie_attr)
        movie.save
      end
      render json: {}
    else
      render json: {}, status: :unprocessable_entity
    end
  end
end
