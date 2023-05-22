class ReviewsController < ApplicationController

  def index
    reviews = Review.all
    render json: {reviews: reviews}
  end
end
