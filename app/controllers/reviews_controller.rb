class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @movie = @review.movie
    if @review.save
      render_info(["Review created successfully!"], false)
      redirect_to @review.movie
    else
      render_errors(@review)
      render 'movies/show'
    end
  end

  private
  def review_params
    params.require(:review).permit(:email, :date, :rating, :comment, :movie_id)
  end
end
